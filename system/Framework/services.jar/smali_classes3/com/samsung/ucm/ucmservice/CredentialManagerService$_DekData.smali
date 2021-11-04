.class Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;
.super Ljava/lang/Object;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "_DekData"
.end annotation


# instance fields
.field dek:[B

.field errorCode:I

.field wrappedDek:[B


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .line 5260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->dek:[B

    .line 5258
    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->wrappedDek:[B

    .line 5261
    iput p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->errorCode:I

    .line 5262
    return-void
.end method
