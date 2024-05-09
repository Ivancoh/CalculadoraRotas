import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UnidadeFederativaService {

    @Autowired
    private UnidadeFederativaRepository unidadeFederativaRepository;

    public List<UnidadeFederativa> getAllUnidadesFederativas() {
        return unidadeFederativaRepository.findByAll();
    }

    public UnidadeFederativa getUnidadeFederativaById(Integer id) {
        return unidadeFederativaRepository.findById(id).orElse(null);
    }

    public UnidadeFederativa createUnidadeFederativa(UnidadeFederativa unidadeFederativa) {
        return unidadeFederativaRepository.save(unidadeFederativa);
    }

    public UnidadeFederativa updateUnidadeFederativa(Integer id, UnidadeFederativa unidadeFederativa) {
        if(unidadeFederativaRepository.existsById(id)) {
            unidadeFederativa.setCdUnidadeFederativa(id);
            return unidadeFederativaRepository.save(unidadeFederativa);
        } else {
            return null;
        }
    }

    public void deleteUnidadeFederativa(Integer id) {
        unidadeFederativaRepository.deleteById(id);
    }
}