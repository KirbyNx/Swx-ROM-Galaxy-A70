.class public Lcom/android/server/net/UrspCore;
.super Ljava/lang/Object;
.source "UrspCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UrspService_Core"


# instance fields
.field protected mUrspService:Lcom/android/server/net/UrspService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/UrspService;)V
    .registers 2
    .param p1, "urspService"    # Lcom/android/server/net/UrspService;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/net/UrspCore;->mUrspService:Lcom/android/server/net/UrspService;

    .line 48
    return-void
.end method


# virtual methods
.method public clearUrspBlockListUidRule()V
    .registers 1

    .line 60
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2
    .param p1, "fout"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 85
    return-void
.end method

.method public factoryReset()V
    .registers 1

    .line 83
    return-void
.end method

.method public getAllUrspBlockListUidsRule()[I
    .registers 2

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllUrspRule()[I
    .registers 2

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrspMode()Z
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getUrspNetId()I
    .registers 2

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public isUrspRuleEnabled(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public registerUrspAppListner(Landroid/net/IUrspAppListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/IUrspAppListener;

    .line 61
    return-void
.end method

.method public requestPduSession(IZLandroid/os/Messenger;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "enabled"    # Z
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;

    .line 63
    return-void
.end method

.method protected sendUrspAppBroadcast(Landroid/os/RemoteCallbackList;II)V
    .registers 10
    .param p2, "type"    # I
    .param p3, "netId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/IUrspAppListener;",
            ">;II)V"
        }
    .end annotation

    .line 66
    .local p1, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/IUrspAppListener;>;"
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 67
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send broadcast. type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", netid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UrspService_Core"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    if-ge v1, v0, :cond_47

    .line 69
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/net/IUrspAppListener;

    .line 70
    .local v3, "listener":Landroid/net/IUrspAppListener;
    if-eqz v3, :cond_44

    .line 72
    :try_start_36
    invoke-interface {v3, p2, p3}, Landroid/net/IUrspAppListener;->onUrspNetIdChanged(II)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 76
    goto :goto_44

    .line 73
    :catch_3a
    move-exception v4

    .line 74
    .local v4, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v5, "send broadcast exception "

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 68
    .end local v3    # "listener":Landroid/net/IUrspAppListener;
    .end local v4    # "ignored":Landroid/os/RemoteException;
    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 79
    .end local v1    # "i":I
    :cond_47
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 80
    return-void
.end method

.method public setUrspBlockListUidRule(ZI)V
    .registers 3
    .param p1, "blocklisted"    # Z
    .param p2, "uid"    # I

    .line 58
    return-void
.end method

.method public setUrspMode(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 50
    return-void
.end method

.method public setUrspNetId(I)V
    .registers 2
    .param p1, "netId"    # I

    .line 57
    return-void
.end method

.method public setUrspRule(ZI)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "uid"    # I

    .line 53
    return-void
.end method

.method public setUrspRules(Z[I)V
    .registers 3
    .param p1, "enabled"    # Z
    .param p2, "uids"    # [I

    .line 52
    return-void
.end method

.method public systemReady()V
    .registers 1

    .line 84
    return-void
.end method

.method public unregisterUrspAppListner(Landroid/net/IUrspAppListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/net/IUrspAppListener;

    .line 62
    return-void
.end method

.method public writePolicy(Ljava/io/FileOutputStream;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 3
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    return-void
.end method
