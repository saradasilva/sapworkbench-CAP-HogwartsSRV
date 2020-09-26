const cds = require('@sap/cds')
module.exports = srv => {
    srv.after(['CREATE', 'UPDATE', 'DELETE'], 'Reviews', async (_, req) => {
        const { objeto } = req.data
        const tx = cds.transaction(req)

        const result = await tx.run(SELECT.one(['round(avg(puntuacion),1) as puntuacion']).from('db.HogwartsService.Reviews').where({ objeto }))
        if (result) {
            req.on('succeeded', () => {
                const payload = { objeto, puntuacion: result.puntuacion }
                cds.run(UPDATE('db.HogwartsService.Pociones').set({ puntuacion: result.puntuacion }).where({ ID: payload.objeto }))
            })
        }
    })
}