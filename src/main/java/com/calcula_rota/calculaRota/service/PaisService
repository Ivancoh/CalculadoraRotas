import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaisService {

    @Autowired
    private PaisRepository paisRepository;

    public List<Pais> getAllPaises() {
        return paisRepository.findAll();
    }

    public Pais getPaisById(Integer id) {
        return paisRepository.findById(id).orElse(null);
    }

    public Pais createPais(Pais pais) {
        return paisRepository.save(pais);
    }

    public Pais updatePais(Integer id, Pais pais) {
        if(paisRepository.existsById(id)) {
            pais.setCdPais(id);
            return paisRepository.save(pais);
        } else {
            return null;
        }
    }

    public void deletePais(Integer id) {
        paisRepository.deleteById(id);
    }
}