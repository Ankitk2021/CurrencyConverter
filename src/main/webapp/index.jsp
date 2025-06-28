<<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Global Exchange - Currency Converter</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="icon" href="data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'%3E%3Ctext x='50%' y='50%' style='dominant-baseline:central;text-anchor:middle;font-size:90px;'%3E%F0%9F%92%B5%3C/text%3E%3C/svg%3E" type="image/svg+xml">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
<div class="app-container">
    <div class="converter-card">
        <h1 class="card-title">Global Exchange</h1>
        <p class="tagline">Convert currencies with ease, worldwide.</p>
        <form action="convert" method="post" class="conversion-form">
            <div class="input-group">
                <label for="amount">Amount to Convert : </label>
                <input type="number" id="amount" name="amount" placeholder="E.g., 10.00" step="0.01" min="0" required />
            </div>

            <div class="select-group">
                <div class="select-wrapper">
                    <label for="fromCurrency">From:</label>
                    <select id="fromCurrency" name="from" required>
<option value="" disabled selected>Select Source</option>
<option value="USD">🇺🇸 USD - US Dollar</option>
<option value="EUR">🇪🇺 EUR - Euro</option>
<option value="GBP">🇬🇧 GBP - British Pound</option>
<option value="INR">🇮🇳 INR - Indian Rupee</option>
<option value="JPY">🇯🇵 JPY - Japanese Yen</option>
<option value="AUD">🇦🇺 AUD - Australian Dollar</option>
<option value="CAD">🇨🇦 CAD - Canadian Dollar</option>
<option value="CHF">🇨🇭 CHF - Swiss Franc</option>
<option value="CNY">🇨🇳 CNY - Chinese Yuan</option>
<option value="SGD">🇸🇬 SGD - Singapore Dollar</option>
<option value="NZD">🇳🇿 NZD - New Zealand Dollar</option>
                    </select>
                </div>

                <button type="button" class="swap-button" title="Swap Currencies">
                    <span class="swap-icon">↔</span>
                </button>

                <div class="select-wrapper">
                    <label for="toCurrency">To:</label>
                    <select id="toCurrency" name="to" required>
<option value="" disabled selected>Select Source</option>
<option value="USD">🇺🇸 USD - US Dollar</option>
<option value="EUR">🇪🇺 EUR - Euro</option>
<option value="GBP">🇬🇧 GBP - British Pound</option>
<option value="INR">🇮🇳 INR - Indian Rupee</option>
<option value="JPY">🇯🇵 JPY - Japanese Yen</option>
<option value="AUD">🇦🇺 AUD - Australian Dollar</option>
<option value="CAD">🇨🇦 CAD - Canadian Dollar</option>
<option value="CHF">🇨🇭 CHF - Swiss Franc</option>
<option value="CNY">🇨🇳 CNY - Chinese Yuan</option>
<option value="SGD">🇸🇬 SGD - Singapore Dollar</option>
<option value="NZD">🇳🇿 NZD - New Zealand Dollar</option>
                    </select>
                </div>
            </div>

            <button type="submit" class="convert-button">Convert Currency</button>
        </form>
        <div class="footer-note">
            Built with dedication ❤️ using Java (JSP + Servlet)
            <br>&copy; 2025 Global Exchange. All rights reserved.
        </div>
    </div>
</div>

<script>
    const swapButton = document.querySelector('.swap-button');
    if (swapButton) {
        swapButton.addEventListener('click', () => {
            const fromSelect = document.getElementById('fromCurrency');
            const toSelect = document.getElementById('toCurrency');

            // Store current values
            const tempFromValue = fromSelect.value;
            const tempToValue = toSelect.value;

            // Swap values
            fromSelect.value = tempToValue;
            toSelect.value = tempFromValue;

            // Trigger change event if needed for any JS frameworks
            const event = new Event('change');
            fromSelect.dispatchEvent(event);
            toSelect.dispatchEvent(event);
        });
    }
</script>
</body>
</html>