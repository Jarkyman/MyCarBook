# OpenCarGarage

A simple private car book for service notes, OEM numbers, fluids, tools and maintenance logs.

Each car has its own folder under `cars/`.

## Cars

- [Peugeot 206+ 2011 1.4 HDi](cars/peugeot/206-plus-2011-1.4-hdi/README.md)
- [Peugeot 208 2014 1.2 VTi](cars/peugeot/208-2014-1.2-vti/README.md)

## Structure

```text
cars/
  peugeot/
    206-plus-2011-1.4-hdi/
      README.md
      vehicle.md
      fluids.md
      service-plan.md
      maintenance-log.md
      parts/
      jobs/
      diagnostics/
      photos/

templates/
  vehicle-template.md
  part-template.md
  job-template.md
  maintenance-log-entry-template.md
```

## Rules

- Mark OEM data as `verified` only when it comes from a VIN lookup, official catalog, or the part currently fitted to the car.
- Mark uncertain data as `TODO` or `not verified`.
- Search parts by OEM number first, then choose a good aftermarket brand.
- Keep receipts, photos and notes close to the job in the matching car folder.

## Brand shortlist

For normal service parts on Peugeot/Citroen cars, prefer:

1. Purflux
2. MANN
3. Bosch
4. Mahle
5. Hengst

For brakes, prefer ATE, Brembo, Bosch or TRW.

For belts and rollers, prefer Gates, Continental/Contitech, INA or SKF.
