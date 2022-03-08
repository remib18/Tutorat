// On sélectionne tous les éléments HTML qui correspondent au sélecteur CSS
const fakeRadios = document.querySelectorAll('.grid span')

// On sélectionne les éléments correspondant aux champs de résultats
const tipAmountElement = document.querySelector('[data-tip-amount]')
const totalElement = document.querySelector('[data-total]')

// On sélectionne les champs numériques
const billElement = document.querySelector('[data-bill]')
const personNumberElement = document.querySelector('[data-person-number]')
const customTipElement = document.querySelector('[data-custom-tip]')

// On sélectionne l'indicateur d'erreur
const personErrorIndicator = document.querySelector('[data-error]')

let tip = undefined
let persons = undefined

function clearFakeRadios() {
    fakeRadios.forEach(el => {
        el.classList.remove('selected')
    })
}

function onSwitchFakeRadio(e) {
    clearFakeRadios()
    customTipElement.value = ''
    e?.classList.toggle('selected')
    tip = e?.getAttribute('data-value')
    runMaths()
}

function handlePersonNumberChanges(e) {
    setTimeout(() => {
        const value = e.value
        if (value === '0') {
            personErrorIndicator.setAttribute('data-error', "Can't be 0")
            e.classList.add('error')
            return;
        }
        e.classList.remove('error')
        personErrorIndicator.setAttribute('data-error', '')
        persons = Number(value)
        runMaths()
    }, 100)
}

function setCustomTip(el) {
    clearFakeRadios()
    setTimeout(() => {
        const value = el.value
        if (value < 1) return
        tip = value
        runMaths()
    })
}

function runMaths() {
    const bill = billElement.value
    if (!tip) tip = 0
    if (!persons) persons = 1
    const tipAmount = bill * tip / 100
    tipAmountElement.setAttribute('data-value', `${normalizeNumber(tipAmount)}`)
    totalElement.setAttribute('data-value', `${normalizeNumber((bill - tipAmount) / persons)}`)
}

function normalizeNumber(number) {
    return number.toFixed(2)
}

function reset() {
    billElement.value = ''
    personNumberElement.value = ''
    customTipElement.value = ''
    tip = undefined
    persons = undefined
    clearFakeRadios()
}

function keyValidation(callback, ...params) {
    const keyCode = ('which' in event) ? event.which : event.keyCode;
    if (keyCode === 32 || keyCode === 13) {
        callback(...params)
    }
}