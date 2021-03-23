package com.invoiceMaker.entity;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;


/**
 * Represents a user role
 *
 *
 * @author John Oliver
 */
@Entity(name = "UserRoles")
@Table(name = "User_Roles")
@Getter
@Setter
public class UserRoles {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;

    @Column(name = "user_name")
    private String userName;

    @Column(name = "role_name")
    private String roleName;

    @Column(name = "user_id")
    private int userId;
}
