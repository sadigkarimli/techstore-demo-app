package az.techstore.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Objects;

public class User extends Base implements Serializable {

    private static final long serialVersionUID = 7312987538730927368L;
    private String firstName;
    private String lastName;
    private String email;
    @JsonIgnore
    private String password;
    private String phone;
    private String companyName;
    private Country country;
    private City city;
    private String address1;
    private String address2;
    private String postalCode;
    private LocalDateTime registrationDate;
    private LocalDateTime activationDate;
    private UserStatus userStatus;
    private List<Role> roleList;

    public User(String firstName, String lastName, String email, String password, String phone, String companyName, Country country, City city, String address1, String address2, String postalCode, LocalDateTime registrationDate, LocalDateTime activationDate, UserStatus userStatus, List<Role> roleList) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.companyName = companyName;
        this.country = country;
        this.city = city;
        this.address1 = address1;
        this.address2 = address2;
        this.postalCode = postalCode;
        this.registrationDate = registrationDate;
        this.activationDate = activationDate;
        this.userStatus = userStatus;
        this.roleList = roleList;
    }

    public User() {
        country = new Country();
        city = new City();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
            return id == user.id &&
                userStatus == user.userStatus &&
                status == user.status &&
                country == user.country &&
                city == user.city &&
                firstName.equals(user.firstName) &&
                lastName.equals(user.lastName) &&
                email.equals(user.email) &&
                password.equals(user.password) &&
                phone.equals(user.phone) &&
                companyName.equals(user.companyName) &&
                address1.equals(user.address1) &&
                address2.equals(user.address2) &&
                postalCode.equals(user.postalCode) &&
                registrationDate.equals(user.registrationDate) &&
                activationDate.equals(user.activationDate) &&
                insertDate.equals(user.insertDate) &&
                lastUpdate.equals(user.lastUpdate) &&
                roleList.equals(user.roleList);
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public LocalDateTime getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(LocalDateTime registrationDate) {
        this.registrationDate = registrationDate;
    }

    public LocalDateTime getActivationDate() {
        return activationDate;
    }

    public void setActivationDate(LocalDateTime activationDate) {
        this.activationDate = activationDate;
    }

    public UserStatus getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(UserStatus userStatus) {
        this.userStatus = userStatus;
    }

    public List<Role> getRoleList() {
        return roleList;
    }

    public void setRoleList(List<Role> roleList) {
        this.roleList = roleList;
    }



    @Override
    public int hashCode() {
        return Objects.hash(id, firstName, lastName, email, password, phone, country, city, address1, address2, postalCode, registrationDate, activationDate, userStatus, roleList, insertDate, lastUpdate, status);
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", companyName='" + companyName + '\'' +
                ", country=" + country +
                ", city=" + city +
                ", address1='" + address1 + '\'' +
                ", address2='" + address2 + '\'' +
                ", postalCode='" + postalCode + '\'' +
                ", registrationDate=" + registrationDate +
                ", activationDate=" + activationDate +
                ", userStatus=" + userStatus +
                ", roleList=" + roleList +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                ", status=" + status +
                '}';
    }
}
