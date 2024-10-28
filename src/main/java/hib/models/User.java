package hib.models;

import jakarta.persistence.*;
import lombok.Data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Data
@Entity
@Table(name = "user", schema = "ad")
public class User implements Serializable {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private Long id;
    private String email;
    private String password;
    @Column(name = "is_admin")
    private Boolean isAdmin;

    //por defecto es lazy
    @OneToMany(mappedBy = "user", fetch = FetchType.EAGER)
    private List <Game> games = new ArrayList<>(0);

    //queremos que la clase sea consistente
    public void addGame(Game g){
        g.setUser(this);
        games.add(g);
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User that = (User) o;
        return id == that.id && Objects.equals(email, that.email) && Objects.equals(password, that.password) && Objects.equals(isAdmin, that.isAdmin);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, email, password, isAdmin);
    }
}
