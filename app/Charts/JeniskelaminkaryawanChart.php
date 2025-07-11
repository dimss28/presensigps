<?php

namespace App\Charts;

use App\Models\Karyawan;
use ArielMejiaDev\LarapexCharts\LarapexChart;
use Illuminate\Support\Facades\DB;

class JeniskelaminkaryawanChart
{
    protected $chart;

    // Konstruktor: inisialisasi class LarapexChart
    public function __construct(LarapexChart $chart)
    {
        $this->chart = $chart;
    }

    // Method utama untuk membangun pie chart jenis kelamin karyawan
    public function build($request = null): \ArielMejiaDev\LarapexCharts\PieChart
    {
        // Mulai query dari tabel karyawan
        $query = Karyawan::query();

        // Ambil data jumlah karyawan, dikelompokkan berdasarkan jenis_kelamin
        $query->select('jenis_kelamin', DB::raw('count(*) as total'));
        $query->groupBy('jenis_kelamin');

        // Jika request punya filter kode_cabang, tambahkan ke query
        if (!empty($request->kode_cabang)) {
            $query->where('karyawan.kode_cabang', $request->kode_cabang);
        }

        // Jika request punya filter kode_dept, tambahkan juga ke query
        if (!empty($request->kode_dept)) {
            $query->where('karyawan.kode_dept', $request->kode_dept);
        }

        // Ambil hasilnya dalam bentuk array: [ 'L' => 10, 'P' => 5 ]
        $rawData = $query->pluck('total', 'jenis_kelamin')->toArray();

        // Mapping kode 'L' => 'Laki-Laki', 'P' => 'Perempuan'
        $jenisKelaminLabels = [
            'L' => 'Laki-Laki',
            'P' => 'Perempuan'
        ];

        // Siapkan label dan data yang akan dikirim ke chart
        $labels = [];
        $data = [];

        foreach ($jenisKelaminLabels as $key => $label) {
            $labels[] = $label;
            $data[] = (int) ($rawData[$key] ?? 0); // Kalau gak ada data, isi 0
        }

        // Buat pie chart dengan LarapexChart
        return $this->chart->pieChart()
            // ->setTitle('Data Karyawan.')
            // ->setSubtitle('Berdasarkan Jenis Kelamin')
            ->addData($data)                      // Set jumlah data (misal: [10, 5])
            ->setLabels($labels)                  // Set label (misal: ['Laki-Laki', 'Perempuan'])
            ->setColors(['#FF6384', '#36A2EB'])   // Warna potongan pie
            ->setDataLabels(true)                 // Aktifkan label pada potongan chart
            ->setOptions([
                'dataLabels' => [
                    'enabled' => true,
                    'formatter' => function ($val, $opts) {
                        return round($val, 1) . '%'; // Tampilkan persen di label
                    },
                    'dropShadow' => [
                        'enabled' => true // Efek bayangan pada label
                    ]
                ]
            ]);
    }
}
