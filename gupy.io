2- def fibonacci(numero):
    a, b = 0, 1
    while a <= numero:
        if a == numero:
            print(f"O número {numero} pertence à sequência de Fibonacci.")
            return
        a, b = b, a + b
    print(f"O número {numero} não pertence à sequência de Fibonacci.")

fibonacci(21) # Exemplo de uso





3- import json

with open('faturamento.json', 'r') as f:
    dados_faturamento = json.load(f)

faturamento_diario = dados_faturamento['faturamento_diario']

menor_faturamento = min(faturamento_diario)
maior_faturamento = max(faturamento_diario)
media_mensal = sum(faturamento_diario) / len(faturamento_diario)
dias_acima_da_media = sum(1 for f in faturamento_diario if f > media_mensal)

print(f"Menor faturamento diário: R${menor_faturamento:.2f}")
print(f"Maior faturamento diário: R${maior_faturamento:.2f}")
print(f"Dias com faturamento acima da média mensal: {dias_acima_da_media}")



4-faturamento_estados = {
    'SP': 67836.43,
    'RJ': 36678.66,
    'MG': 29229.88,
    'ES': 27165.48,
    'Outros': 19849.53
}

total_mensal = sum(faturamento_estados.values())

for estado, faturamento in faturamento_estados.items():
    percentual = faturamento / total_mensal * 100
    print(f"{estado}: {percentual:.2f}%")





5 -faturamento_estados = {
    'SP': 67836.43,
    'RJ': 36678.66,
    'MG': 29229.88,
    'ES': 27165.48,
    'Outros': 19849.53
}

total_mensal = sum(faturamento_estados.values())

for estado, faturamento in faturamento_estados.items():
    percentual = faturamento / total_mensal * 100
    print(f"{estado}: {percentual:.2f}%")
