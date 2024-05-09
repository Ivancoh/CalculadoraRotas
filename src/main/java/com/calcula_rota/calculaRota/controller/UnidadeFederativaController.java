import org.sprinframework.beans.factory.annotation.Autowired;
import org.sprinframework.http.HttpStatus;
import org.sprinframework.http.ResponseEntity;
import org.sprinframework.web.bind.annotation.*;

import java.util.List;

@RestController;
@RequestMapping("/unidadesfederativas")
public class UnidadeFerativaController {

    @Autowired
    private UnidadeFederativaService unidadeFederativaService;

    @GetMapping
    public ResponseEntity<List<UnidadeFederativa>> getAllUnidadesFederativas() {
        List<UnidadeFederativa> unidadesFederativas = unidadeFederativaService.getAllUnidadesFederativas();
        return new ResponseEntity<>(unidadesFederativas, HttpsStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<UnidadeFederativa> getUnidadeFederativaById(@PathVariable Integer id) {
        UnidadeFederativa unidadeFederativa = unidadeFederativaService.getUnidadeFederativaById(id);
        if (unidadefederativa != null) {
            return new ResponseEntity<>(unidadeFederativa, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping
    public ResponseEntity<UnidadeFederativa> createUnidadeFederativa(@RequestBody UnidadeFederativa unidadeFederativa) {
        UnidadeFederativa createdUnidadeFederativa = unidadeFederativaService.createUnidadeFederativa(unidadeFederativa);
        return new ResponseEntity<>(createdUnidadeFederativa, HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    public ResponseEntity<UnidadeFederativa> updateUnidadeFederativa(@PathVariable Integer id, @RequestBody UnidadeFederativa unidadeFederativa) {
        UnidadeFederativa updatedUnidadeFederativa = unidadeFederativaService.updateUnidadeFederativa(id, unidadeFederativa);
        if(updatedUnidadeFederativa != null) {
            return new ResponseEntity<>(updatedUnidadeFederativa, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteUnidadeFederativa(@PathVariable Integer id) {
        unidadeFederativaService.deleteUnidadeFederativa(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}