.class public Lcom/android/server/ActivationTeeService;
.super Lcom/samsung/android/service/activationteeservice/IActivationTeeService$Stub;
.source "ActivationTeeService.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-string v0, "activation-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/service/activationteeservice/IActivationTeeService$Stub;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/server/ActivationTeeService;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public native generateCredentials([B)Lcom/samsung/android/service/activationteeservice/ActivationTeeCredentials;
.end method

.method public generateCredentials2([B)Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;
    .registers 7
    .param p1, "paramArrayOfByte"    # [B

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/ActivationTeeService;->generateCredentials([B)Lcom/samsung/android/service/activationteeservice/ActivationTeeCredentials;

    move-result-object v0

    .line 37
    .local v0, "cert":Lcom/samsung/android/service/activationteeservice/ActivationTeeCredentials;
    new-instance v1, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;

    invoke-virtual {v0}, Lcom/samsung/android/service/activationteeservice/ActivationTeeCredentials;->getEncrypted()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/service/activationteeservice/ActivationTeeCredentials;->getIV()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/service/activationteeservice/ActivationTeeCredentials;->getTag()[B

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;-><init>([B[B[B)V

    .line 38
    .local v1, "cert2":Lcom/samsung/android/service/activationteeservice/ActivationTee2Credentials;
    return-object v1
.end method

.method public native generateSessionCertificate()Lcom/samsung/android/service/activationteeservice/ActivationTeeCertificates;
.end method

.method public generateSessionCertificate2()Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;
    .registers 5

    .line 30
    invoke-virtual {p0}, Lcom/android/server/ActivationTeeService;->generateSessionCertificate()Lcom/samsung/android/service/activationteeservice/ActivationTeeCertificates;

    move-result-object v0

    .line 31
    .local v0, "cert":Lcom/samsung/android/service/activationteeservice/ActivationTeeCertificates;
    new-instance v1, Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;

    invoke-virtual {v0}, Lcom/samsung/android/service/activationteeservice/ActivationTeeCertificates;->getDrkCert()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/service/activationteeservice/ActivationTeeCertificates;->getRsaCert()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;-><init>([B[B)V

    .line 32
    .local v1, "cert2":Lcom/samsung/android/service/activationteeservice/ActivationTee2Certificates;
    return-object v1
.end method

.method public native storeServerKey([B)V
.end method
