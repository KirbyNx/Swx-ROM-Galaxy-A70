.class public abstract Lcom/android/server/sdp/SdpManagerInternal;
.super Ljava/lang/Object;
.source "SdpManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMasterKeyVersion(I)I
.end method

.method public abstract setMasterKeyVersion(II)V
.end method

.method public abstract setSdpPolicy(I)Z
.end method

.method public abstract setSdpPolicyToPath(ILjava/lang/String;)Z
.end method

.method public abstract updateMasterKey([B[BI)Z
.end method
