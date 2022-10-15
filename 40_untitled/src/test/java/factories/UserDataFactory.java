package factories;

import com.github.javafaker.Faker;
import pojo.CreateUsersPojo;
import pojo.SecondUserPojoPut;
import pojo.SecondUsersPojo;

public class UserDataFactory {
    Faker faker = new Faker();

    public SecondUsersPojo userSecondSitePost(){
        // https://gorest.co.in/public/v2/users

        System.out.println(" ---------- userSecondSite ---------- \n");
        SecondUsersPojo users = new SecondUsersPojo();

        users.setName("Tenali Ramakrishna");
        users.setGender("male");
        users.setEmail("tenali.ramakrishna@15ce11.com");
        users.setStatus("active");

        System.out.println(" ---------- userSecondSite ---------- \n" + users);
        return users;
    }


    public SecondUserPojoPut userSecondSitePut(){

        System.out.println(" ---------- SecondUserPojoPut ---------- \n");
        SecondUserPojoPut users = new SecondUserPojoPut();

        users.setName("Put123 Put123");
        users.setEmail("put123@put123.com");
        users.setStatus("active");

        System.out.println(" ---------- SecondUserPojoPut ---------- \n" + users);
        return users;
    }

     public CreateUsersPojo userAdm(){
        System.out.println(" ---------- userAdm ---------- \n");
        CreateUsersPojo user = new CreateUsersPojo();
        //     http://localhost:3000/usuarios/

        //user.setNome(faker.name().fullName());          //      "nome": "Create User2",
        //user.setEmail(faker.internet().emailAddress()); //      "email": "user2@qa.com.br",
        user.setNome("Create2 User2");                    //      "nome": "Create User2",
        user.setEmail("user2@qa.com.br");                 //      "email": "user2@qa.com.br",
        user.setPassword("teste");                        //      "password": "teste",
        user.setAdministrador("true");                    //      "administrador": "true"

        System.out.println(" ---------- userAdm ---------- \n" + user);
        return user;
    }

    public CreateUsersPojo userWithoutTypeAdm(){
        CreateUsersPojo user = new CreateUsersPojo();
        user.setNome(faker.name().fullName());
        user.setEmail(faker.internet().emailAddress());
        user.setPassword("teste");
        System.out.println(" ---------- userWithoutTypeAdm ---------- \n" + user);
        return user;
    }

    public CreateUsersPojo userWithoutName(){
        CreateUsersPojo user = new CreateUsersPojo();
        user.setAdministrador("true");
        user.setEmail(faker.internet().emailAddress());
        user.setPassword("teste");
        System.out.println(" ---------- userWithoutName ---------- \n" + user);
        return user;
    }

    public CreateUsersPojo userWithoutPassword(){
        CreateUsersPojo user = new CreateUsersPojo();
        user.setNome(faker.name().fullName());
        user.setAdministrador("true");
        user.setEmail(faker.internet().emailAddress());
        System.out.println(" ---------- userWithoutPassword ---------- \n" + user);
        return user;
    }

    public CreateUsersPojo userWithoutEmail(){
        CreateUsersPojo user = new CreateUsersPojo();
        user.setNome(faker.name().fullName());
        user.setAdministrador("true");
        user.setPassword("teste");
        System.out.println(" ---------- userWithoutEmail ---------- \n" + user);
        return user;
    }
}
