.class public final Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
.super Ljava/lang/Object;
.source "AttestParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/security/keystore/AttestParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private final mChallenge:[B

.field private mDeviceAttestation:Z

.field private mPackageName:Ljava/lang/String;

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field private mVerifiableIntegrity:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/security/keystore/AttestParameterSpec;)V
    .registers 4
    .param p1, "sourceSpec"    # Lcom/samsung/android/security/keystore/AttestParameterSpec;

    .line 156
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getChallenge()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    .line 157
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isDeviceAttestation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDeviceAttestation:Z

    .line 159
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isVerifiableIntegrity()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    .line 160
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mPackageName:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 162
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "challenge"    # [B

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string v0, "EC"

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDeviceAttestation:Z

    .line 120
    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mPackageName:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 134
    if-eqz p1, :cond_46

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 139
    if-eqz p2, :cond_36

    .line 143
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v1, "SHA-256"

    const-string v2, "SHA-512"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 147
    iput-object p2, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mChallenge:[B

    .line 148
    return-void

    .line 140
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "challenge == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_46
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/security/keystore/AttestParameterSpec;
    .registers 10

    .line 243
    new-instance v8, Lcom/samsung/android/security/keystore/AttestParameterSpec;

    iget-object v1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mChallenge:[B

    iget-boolean v3, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDeviceAttestation:Z

    iget-boolean v4, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    iget-object v5, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iget-object v7, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/security/keystore/AttestParameterSpec;-><init>(Ljava/lang/String;[BZZLjava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;Ljavax/security/auth/x500/X500Principal;)V

    return-object v8
.end method

.method public setAlgorithm(Ljava/lang/String;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .registers 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .registers 2
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .line 234
    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 235
    return-object p0
.end method

.method public setDeviceAttestation(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .registers 2
    .param p1, "requested"    # Z

    .line 187
    iput-boolean p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDeviceAttestation:Z

    .line 188
    return-object p0
.end method

.method public setKeyGenParameterSpec(Landroid/security/keystore/KeyGenParameterSpec;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .registers 2
    .param p1, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;

    .line 224
    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 225
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mPackageName:Ljava/lang/String;

    .line 210
    return-object p0
.end method

.method public setVerifiableIntegrity(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .registers 2
    .param p1, "checked"    # Z

    .line 199
    iput-boolean p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    .line 200
    return-object p0
.end method
