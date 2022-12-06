package entities;

import java.util.Date;

public class HorarioCompra {
    private Date horarioCompra;

    public HorarioCompra(Date horarioCompra) {
        this.horarioCompra = horarioCompra;
    }

    public Date getHorario() {
        return horarioCompra;
    }
}
