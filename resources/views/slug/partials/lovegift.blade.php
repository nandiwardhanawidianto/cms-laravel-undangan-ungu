<div class="card mt-3">
    <div class="card-header">
        <h5>💝 Love Gift</h5>
    </div>
    <div class="card-body">
        <form action="{{ route('lovegift.store', $slug_id) }}" method="POST">
            @csrf

            <div id="bank-wrapper">
                @php 
                    $banks = $lovegift->banks ?? [];
                    $count = max(1, count($banks));
                @endphp

                @for($i=0; $i<$count; $i++)
                    <div class="card mb-3 p-3 bank-item">
                        <h6>Bank {{ $i+1 }}</h6>
                        <div class="mb-2">
                            <label>Nama Bank</label>
                            <input type="text" name="nama_bank[]" 
                                class="form-control" 
                                value="{{ $banks[$i]['nama_bank'] ?? '' }}" 
                                {{ $i==0 ? 'required' : '' }}>
                        </div>
                        <div class="mb-2">
                            <label>No Rekening</label>
                            <input type="text" name="no_rekening[]" 
                                class="form-control" 
                                value="{{ $banks[$i]['no_rekening'] ?? '' }}" 
                                {{ $i==0 ? 'required' : '' }}>
                        </div>
                        <div class="mb-2">
                            <label>Nama Pemilik</label>
                            <input type="text" name="pemilik_bank[]" 
                                class="form-control" 
                                value="{{ $banks[$i]['pemilik_bank'] ?? '' }}" 
                                {{ $i==0 ? 'required' : '' }}>
                        </div>
                    </div>
                @endfor
            </div>

            <button type="button" id="btnAddBank" class="btn btn-sm btn-secondary">+ Tambah Bank</button>
            <button type="submit" class="btn btn-primary">Simpan</button>
        </form>
    </div>
</div>

<script>
let maxBank = 3;
let bankWrapper = document.getElementById('bank-wrapper');
let btnAddBank = document.getElementById('btnAddBank');

btnAddBank.addEventListener('click', function () {
    let bankCount = bankWrapper.querySelectorAll('.bank-item').length;

    if (bankCount >= maxBank) {
        alert("Maksimal hanya 3 rekening bank!");
        return;
    }

    let newBank = document.createElement('div');
    newBank.classList.add('card','mb-3','p-3','bank-item');
    newBank.innerHTML = `
        <h6>Bank ${bankCount+1}</h6>
        <div class="mb-2">
            <label>Nama Bank</label>
            <input type="text" name="nama_bank[]" class="form-control">
        </div>
        <div class="mb-2">
            <label>No Rekening</label>
            <input type="text" name="no_rekening[]" class="form-control">
        </div>
        <div class="mb-2">
            <label>Nama Pemilik</label>
            <input type="text" name="pemilik_bank[]" class="form-control">
        </div>
    `;
    bankWrapper.appendChild(newBank);
});
</script>
