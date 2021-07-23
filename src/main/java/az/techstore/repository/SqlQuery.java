package az.techstore.repository;

public class SqlQuery {

    public static final String CHECK_EMAIL = "select count(id) cnt from user where email = ? and status = 1";

    public static final String ADD_USER = "insert into user(id, first_name, last_name, email, password, " +
            "phone, company_name, country_id, city_id, address1, address2, postal_code) " +
            "             values(null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";

    public static final String ADD_USER_ROLE = "insert into user_role(id, user_id, role_id) " +
            "values (null, ?, ?)";

    public static final String ADD_TOKEN = "insert into token(id, value, user_id, type, idate, expire_time)  " +
            " values(null, ?, ?, ?, ?, ?) ";

    public static final String GET_PENDING_NOTIFICATIONS = "select id, `from`, `to`, subject, content, " +
            "process_status, type, log_data, source_system, idate, udate, status  " +
            "   from notification where type = ? and process_status = 0 and status = 1 " +
            "order by id limit ? ";

    public static final String ADD_NOTIFICATION = "insert into notification(id, `from`, `to`, type, " +
            " content, subject, status, source_system, process_status) " +
            "values(null, ?, ?, ?, " +
            "   ?, ?, 1, ?, 0) ";

    public static final String UPDATE_NOTIFICATION = "update notification set process_status = ?, udate = current_timestamp(), log_data = ?  " +
            "where id = ? and status = 1";

    public static final String GET_NOTIFICATION_BY_ID = "select id, `from`, `to`, subject, content, " +
            "process_status, type, log_data, source_system, idate, udate, status  " +
            "from notification where id = ? and status = 1 ";

    public static final String GET_USER_ROLES = "select r.id, r.name, r.success_page, " +
            "r.priority " +
            "from user_role ur join user u on ur.user_id = u.id and ur.status = 1 and u.status = 1 " +
            "   join role r on ur.role_id = r.id and r.status = 1 " +
            "where u.id = ? " +
            "order by r.priority";

    public static final String GET_USER_BY_EMAIL = "select  id, first_name, last_name, email, password, phone, company_name, " +
            " country_id, city_id, address1, address2, postal_code, " +
            " user_status, registration_date, activation_date, idate, udate, status" +
            " from user where email = ?";

    public static final String GET_USER_BY_ID = "select  id, first_name, last_name, email, password, phone, company_name, " +
            " country_id, city_id, address1, address2, postal_code, " +
            "user_status, registration_date,activation_date, idate, udate, status" +
            " from user where id = ?";

    public static final String GET_USER_LIST = "select id, first_name, last_name, email, password, phone, company_name," +
            " country_id, city_id, address1, address2, postal_code, " +
            " user_status, registration_date,activation_date, idate, udate, status" +
            " from user";

    public static final String SEARCH_USER = "select id, first_name, last_name, email, password, phone, company_name,  " +
            "   country_id, city_id, address1, address2, postal_code, " +
            "   user_status, registration_date,activation_date, idate, udate, status  " +
            "from user where concat(id, first_name, last_name, " +
            "   email, ifnull(date_format(registration_date, '%d-%m-%Y'), ''), ifnull(date_format(activation_date, '%d-%m-%Y'), '')) " +
            "like binary ?  order by {SORT_COLUMN} {SORT_DIRECTION} " +
            "limit ?, ? ";

    public static final String USER_SEARCH_COUNT = "select count(id) user_count " +
            "from user where concat(id, first_name, last_name, " +
            "   email, ifnull(registration_date, ''), ifnull(activation_date, '')) " +
            "like binary ?";

    public static final String DELETE_USER = "update user set status = 0, udate = current_timestamp where id = 26 and status = 1";

    public static final String GET_USER_COUNT = "select count(id) user_count from user";

    public static final String UPDATE_USER = "";

    public static final String ADD_CATEGORY = "";

    public static final String GET_COUNTRY_LIST = "select id, name, code, idate, udate, status from country where status = 1";

    public static final String GET_CITY_BY_COUNTRY_ID = "select id, name, idate, udate, status from city where status = 1 and country_id = ?";




}
