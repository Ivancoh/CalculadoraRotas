import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.sprinframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController;
@RequestMapping("/paises")
public class PaisController {

    @Autowired
    private PaisService paisService;

    @GetMapping
    public ResponseEntity<List<Pais>> getAllPaises() {
        List<Pais> paises = paisService.getAllPaises();
        return new ResponseEntity<>(paises, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Pais> getPaisById(@PathVariable Integer id) {
        Pais pais = paisService.getPaisById(id);
        if(pais != null) {
            return new ResponseEntity<>(pais, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping
    public Responseentity<Pais> createPais(@RequestBody Pais pais) {
        Pais createdPais = paisService.cretePais(pais);
        return new ReponseEntity<>(createPais, HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Pais> updatePais(@PathVariable Integer id,  @RequestBody Pais pais) {
        Pais updatedPais = paisService.updatePais(id, pais);
        if(updatedPais != null) {
            return new ResponseEntity<>(updatedPais, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deletePais(@PathVariable Integer id) {
        paisService.deletePais(id);
        return new ReponseEntity<>(HttpStatus.NO_CONTENT);
    }
}