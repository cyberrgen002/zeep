program HitungNilaiDanBiaya;


var
  NIM, NAMA, JURUSAN, MATAKULIAH: string;
  TUGAS, KUIS, UTS, UAS: real;
  NILAI_AKHIR: real;
  NILAI_HURUF: char;
  UANG_PANGKAL: real;

begin
  writeln('--- Input Data Mahasiswa ---');
  write('Masukkan NIM: ');
  readln(NIM);
  write('Masukkan NAMA: ');
  readln(NAMA);
  write('Masukkan JURUSAN (SI/TI): ');
  readln(JURUSAN);
  write('Masukkan MATAKULIAH: ');
  readln(MATAKULIAH);
  
  writeln;
  writeln('--- Input Nilai ---');
  write('Masukkan Nilai TUGAS (0-100): ');
  readln(TUGAS);
  write('Masukkan Nilai KUIS (0-100): ');
  readln(KUIS);
  write('Masukkan Nilai UTS (0-100): ');
  readln(UTS);
  write('Masukkan Nilai UAS (0-100): ');
  readln(UAS);
  

  NILAI_AKHIR := (0.15 * TUGAS) + (0.15 * KUIS) + (0.30 * UTS) + (0.40 * UAS);
  
 
  if NILAI_AKHIR >= 85 then
    NILAI_HURUF := 'A'
  else if NILAI_AKHIR >= 71 then
    NILAI_HURUF := 'B'
  else if NILAI_AKHIR >= 60 then
    NILAI_HURUF := 'C'
  else if NILAI_AKHIR >= 41 then
    NILAI_HURUF := 'D'
  else
    NILAI_HURUF := 'E';
    
 
  if (JURUSAN) = 'SI' then 
    UANG_PANGKAL := 500000
  else if (JURUSAN) = 'TI' then
    UANG_PANGKAL := 1000000
  else
    UANG_PANGKAL := 0; 
  
  writeln;

  writeln('NIM        : ', NIM);
  writeln('NAMA       : ', NAMA);
  writeln('JURUSAN    : ', JURUSAN);
  writeln('MATAKULIAH : ', MATAKULIAH);
  writeln('------------------------------------');
  
  writeln('Nilai Akhir = ', NILAI_AKHIR:0:2); 
  writeln('Nilai Huruf = ', NILAI_HURUF);
  writeln('------------------------------------');
  writeln('Biaya Uang Pangkal: Rp ', UANG_PANGKAL:0:0); 

end.
