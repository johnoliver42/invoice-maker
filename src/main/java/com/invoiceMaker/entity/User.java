package com.invoiceMaker.entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;


import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;


/**
 * This class represents a user.
 *
 * @author John Oliver
 */
@Entity(name = "User")
@Table(name = "User")
@Getter
@Setter
@NoArgsConstructor
@RequiredArgsConstructor
@AllArgsConstructor
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;
    @Column(name = "firstName")
    private String firstName;
    @Column(name = "lastName")
    private String lastName;
    @Column(name = "email")
    private String email;
    @Column(name = "businessName")
    private String businessName;
    @Column(name = "street1")
    private String street1;
    @Column(name = "street2")
    private String street2;
    @Column(name = "city")
    private String city;
    @Column(name = "state")
    private String state;
    @Column(name = "postalCode")
    private String postalCode;

    @OneToMany(  cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    @JoinColumn(name = "users_id")
    private Set<com.invoiceMaker.entity.Orders> orders = new HashSet<>();

    @OneToMany (cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id" )
    private Set<com.invoiceMaker.entity.UserRoles> userRoles = new HashSet<>();



}
