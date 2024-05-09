import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persitence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Entity
@Table(name = "TbPais")
public class Pais {
    @Id
    @GeneratedValue(strategy = GenerationType.INDETITY)
    private Integer cdPais;

    @NotBlank
    private String nmPais;

    @NotNull
    @Enumerated(EnumType.STRING)
    private StatusAtivoEnum flAtivo;

    @NotNull
    private LocalDateTime dtInclusao;

    //Getters e Setters

    public Integer getCdPais() {
        return cdPais;
    }

    public void setCdPais(Integer cdPais) {
        this.cdPais = cdPais;
    }

    public String getNmPais() {
        return nmPais;
    }

    public void setNmPais(String nmPais) {
        this.nmPais = nmPais;
    }

    public StatusAtivoEnum getFlAtivo() {
        return flAtivo;
    }

    public void setFlAtivo(StatusAtivoEnum flAtivo) {
        this.flAtivo = flAtivo;
    }

    public LocalDateTime getDtInclusao() {
        return dtInclusao;
    }

    public void setDtInclusao(LocalDateTime dtInclusao) {
        this.dtInclusao = dtInclusao;
    }

}