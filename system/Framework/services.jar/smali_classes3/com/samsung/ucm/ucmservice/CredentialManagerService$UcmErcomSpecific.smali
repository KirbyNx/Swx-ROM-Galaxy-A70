.class Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;
.super Ljava/lang/Object;
.source "CredentialManagerService.java"

# interfaces
.implements Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmVendorSpecific;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UcmErcomSpecific"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UcmService_ercom"


# instance fields
.field private mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

.field final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p2, "agent"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 5275
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 5276
    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 5277
    return-void
.end method


# virtual methods
.method public getDekForVold(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "wrappedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDekForVold "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService_ercom"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5337
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getODEAgent()Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1700(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 5339
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->unwrapDek(Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    invoke-static {v2, p1, p2, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1900(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    .line 5340
    .local v0, "ret":Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    iget v2, v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    if-nez v2, :cond_39

    iget-object v2, v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    if-eqz v2, :cond_39

    iget-object v2, v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    array-length v2, v2

    if-nez v2, :cond_32

    goto :goto_39

    .line 5346
    :cond_32
    iget-object v1, v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    invoke-virtual {p0, p1, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->getDekForVoldInternalKey(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    return-object v1

    .line 5341
    :cond_39
    :goto_39
    const-string v2, "getDekForVold. unwrapDek failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5342
    return-object v0
.end method

.method public getDekForVoldInternalKey(Ljava/lang/String;[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDekForVoldInternalKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService_ercom"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5317
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # getter for: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->mIsFbeEnabled:Z
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$900(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 5318
    const/4 v0, 0x0

    .line 5319
    .local v0, "errorcode":I
    invoke-static {}, Lcom/sec/esecomm/EsecommAdapter;->getEsecommAdapter()Lcom/sec/esecomm/EsecommAdapter;

    move-result-object v2

    .line 5320
    .local v2, "esecommAdapter":Lcom/sec/esecomm/EsecommAdapter;
    invoke-virtual {v2, p2}, Lcom/sec/esecomm/EsecommAdapter;->deriveCEKey([B)[B

    move-result-object v3

    .line 5322
    .local v3, "data":[B
    if-nez v3, :cond_30

    .line 5323
    const-string v4, "getDekForVoldInternalKey. deriveCEKey returns empty"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5324
    const/16 v0, 0x12

    .line 5327
    :cond_30
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getResponseParcel(I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    invoke-static {v1, v0, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$2000(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I[B)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v1

    return-object v1

    .line 5329
    .end local v0    # "errorcode":I
    .end local v2    # "esecommAdapter":Lcom/sec/esecomm/EsecommAdapter;
    .end local v3    # "data":[B
    :cond_37
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getODEAgent()Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-static {v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1700(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 5330
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->unwrapDek(Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    invoke-static {v1, p1, p2, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1900(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    return-object v0
.end method

.method public getDeks(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;
    .registers 9
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UcmService_ercom"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5282
    const/4 v0, 0x0

    .line 5283
    .local v0, "errorcode":I
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getODEAgent()Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1700(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 5286
    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->generateWrappedDek(Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    invoke-static {v3, p1, v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1800(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v2

    .line 5287
    .local v2, "ret":Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    iget v3, v2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    if-eqz v3, :cond_31

    .line 5288
    new-instance v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    iget v3, v2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    invoke-direct {v1, v3}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    return-object v1

    .line 5290
    :cond_31
    iget-object v3, v2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    const/16 v4, 0x12

    if-eqz v3, :cond_74

    iget-object v3, v2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    array-length v3, v3

    if-nez v3, :cond_3d

    goto :goto_74

    .line 5295
    :cond_3d
    iget-object v3, v2, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    .line 5298
    .local v3, "uiccWrappedK0":[B
    iget-object v5, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    iget-object v6, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$UcmErcomSpecific;->mAgent:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    # invokes: Lcom/samsung/ucm/ucmservice/CredentialManagerService;->unwrapDek(Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    invoke-static {v5, p1, v3, v6}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->access$1900(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Ljava/lang/String;[BLcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v5

    .line 5299
    .local v5, "ret2":Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    iget v6, v5, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    if-eqz v6, :cond_53

    .line 5300
    new-instance v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    iget v4, v5, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    invoke-direct {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    return-object v1

    .line 5302
    :cond_53
    iget-object v6, v5, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    if-eqz v6, :cond_69

    iget-object v6, v5, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    array-length v6, v6

    if-nez v6, :cond_5d

    goto :goto_69

    .line 5307
    :cond_5d
    new-instance v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    invoke-direct {v1, v0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    .line 5308
    .local v1, "dekData":Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;
    iput-object v3, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->wrappedDek:[B

    .line 5309
    iget-object v4, v5, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    iput-object v4, v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;->dek:[B

    .line 5311
    return-object v1

    .line 5303
    .end local v1    # "dekData":Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;
    :cond_69
    :goto_69
    const-string v6, "getDeks. unwrapDek return empty"

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5304
    new-instance v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    invoke-direct {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    return-object v1

    .line 5291
    .end local v3    # "uiccWrappedK0":[B
    .end local v5    # "ret2":Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
    :cond_74
    :goto_74
    const-string v3, "getDeks. generateWrappedDek return empty"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5292
    new-instance v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;

    invoke-direct {v1, v4}, Lcom/samsung/ucm/ucmservice/CredentialManagerService$_DekData;-><init>(I)V

    return-object v1
.end method
