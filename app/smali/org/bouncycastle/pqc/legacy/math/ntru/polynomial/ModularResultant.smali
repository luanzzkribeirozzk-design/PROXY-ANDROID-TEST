.class public Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;
.super Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;


# instance fields
.field modulus:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Resultant;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;)V

    iput-object p3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;->modulus:Ljava/math/BigInteger;

    return-void
.end method

.method static combineRho(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;
    .locals 6

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;->modulus:Ljava/math/BigInteger;

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;->calculate(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;->rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    iget-object v5, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;->x:Ljava/math/BigInteger;

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->mult(Ljava/math/BigInteger;)V

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;->rho:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;

    iget-object v4, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/BigIntEuclidean;->y:Ljava/math/BigInteger;

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->mult(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;->mod(Ljava/math/BigInteger;)V

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ModularResultant;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/BigIntPolynomial;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method
