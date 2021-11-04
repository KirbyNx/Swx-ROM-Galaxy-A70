.class public Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;
.super Ljava/lang/Object;
.source "NTLMCredentials.java"


# instance fields
.field private final domain:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final username:Ljava/lang/String;

.field private final workstation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "userCred"    # Ljava/lang/String;
    .param p2, "domainFromType2"    # Ljava/lang/String;
    .param p3, "workstation"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, "credentials":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const-string v3, ""

    if-lez v1, :cond_12

    aget-object v1, v0, v2

    goto :goto_13

    :cond_12
    move-object v1, v3

    .line 15
    .local v1, "username":Ljava/lang/String;
    :goto_13
    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_19

    aget-object v3, v0, v5

    .line 17
    .local v3, "password":Ljava/lang/String;
    :cond_19
    const/16 v4, 0x5c

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 18
    .local v4, "slashPos":I
    if-ltz v4, :cond_23

    move v5, v4

    goto :goto_29

    :cond_23
    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    :goto_29
    move v4, v5

    .line 19
    if-ltz v4, :cond_37

    .line 20
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, "domain":Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    .line 23
    .end local v2    # "domain":Ljava/lang/String;
    :cond_37
    move-object v2, p2

    .line 25
    .restart local v2    # "domain":Ljava/lang/String;
    :goto_38
    if-nez v2, :cond_3c

    const/4 v5, 0x0

    goto :goto_40

    :cond_3c
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    :goto_40
    iput-object v5, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;->domain:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;->username:Ljava/lang/String;

    .line 27
    iput-object v3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;->password:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;->workstation:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkstation()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/auth/ntlm/NTLMCredentials;->workstation:Ljava/lang/String;

    return-object v0
.end method
