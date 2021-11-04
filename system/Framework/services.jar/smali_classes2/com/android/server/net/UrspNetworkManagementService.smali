.class public final Lcom/android/server/net/UrspNetworkManagementService;
.super Landroid/os/Handler;
.source "UrspNetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MSG_BASE:I = 0x2710

.field private static final MSG_SET_NETID_FOR_FOC:I = 0x2713

.field private static final MSG_SET_NETID_FOR_MDO:I = 0x2711

.field private static final MSG_SET_STATE_FOR_FOC:I = 0x2714

.field private static final MSG_SET_UID_RULES_FOR_FOC:I = 0x2715

.field private static final MSG_SET_UID_RULE_FOR_MDO:I = 0x2712

.field private static final TAG:Ljava/lang/String; = "UrspNms"

.field private static final VDBG:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManagement"    # Landroid/os/INetworkManagementService;

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    const-string/jumbo v0, "start UrspNetworkManagementService"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UrspNms"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 64
    .local v1, "mLooper":Landroid/os/Looper;
    if-eqz v1, :cond_25

    .line 65
    new-instance v2, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;-><init>(Lcom/android/server/net/UrspNetworkManagementService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    goto :goto_2b

    .line 67
    :cond_25
    const-string/jumbo v2, "handlerThread.getLooper() returned null"

    invoke-static {v2}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    .line 69
    :goto_2b
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/UrspNetworkManagementService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/UrspNetworkManagementService;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetIdForMdo(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/UrspNetworkManagementService;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/UrspNetworkManagementService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspUidForMdo(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/UrspNetworkManagementService;ZI[I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/net/UrspNetworkManagementService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # [I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspRulesForFoc(ZI[I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/UrspNetworkManagementService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/UrspNetworkManagementService;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetIdForFoc(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/UrspNetworkManagementService;Z[II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/net/UrspNetworkManagementService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # [I
    .param p3, "x3"    # I

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspStateForFoc(Z[II)V

    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 242
    const-string v0, "UrspNms"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 247
    const-string v0, "UrspNms"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method private setUrspNetIdForFoc(I)V
    .registers 5
    .param p1, "netId"    # I

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspNetIdForFoc - NetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    .line 214
    :try_start_15
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->setFocNetId(I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 217
    goto :goto_24

    .line 215
    :catch_1b
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UrspNms"

    const-string/jumbo v2, "setFocNetId exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24
    return-void
.end method

.method private setUrspNetIdForMdo(I)V
    .registers 4
    .param p1, "netId"    # I

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspNetIdForMdo - NetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    .line 189
    :try_start_15
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->setMdoNetId(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 193
    goto :goto_25

    .line 190
    :catch_1b
    move-exception v0

    .line 191
    .local v0, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v1, "setUrspNetIdForMdo exception"

    invoke-static {v1}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 194
    .end local v0    # "ignored":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method private setUrspRulesForFoc(ZI[I)V
    .registers 7
    .param p1, "enabled"    # Z
    .param p2, "netId"    # I
    .param p3, "uids"    # [I

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRulesForFoc - enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    .line 199
    if-eqz p1, :cond_2e

    .line 200
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->flushFocTables()V

    .line 201
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p2, p3}, Landroid/os/INetworkManagementService;->doDestroySockets(I[I)V

    .line 202
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p3}, Landroid/os/INetworkManagementService;->setFocBlockList(Z[I)V

    .line 204
    :cond_2e
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->clearFocUidList()V

    .line 205
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p3}, Landroid/os/INetworkManagementService;->setFocUidList([I)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_38} :catch_39

    .line 208
    goto :goto_42

    .line 206
    :catch_39
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UrspNms"

    const-string/jumbo v2, "setFocUidList exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_42
    return-void
.end method

.method private setUrspStateForFoc(Z[II)V
    .registers 7
    .param p1, "enabled"    # Z
    .param p2, "uids"    # [I
    .param p3, "netId"    # I

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspStateForFoc - enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    .line 222
    const-string v0, "UrspNms"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_32

    .line 224
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->flushFocTables()V

    .line 225
    iget-object v2, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p3, p2}, Landroid/os/INetworkManagementService;->doDestroySockets(I[I)V

    .line 226
    iget-object v2, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v1, p2}, Landroid/os/INetworkManagementService;->setFocBlockList(Z[I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_29} :catch_2a

    goto :goto_31

    .line 227
    :catch_2a
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setFocState::setFocBlockList true exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_31
    goto :goto_46

    .line 230
    :cond_32
    if-nez p1, :cond_46

    .line 232
    :try_start_34
    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p3, p2}, Landroid/os/INetworkManagementService;->doDestroySockets(I[I)V

    .line 233
    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->flushFocTables()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3e} :catch_3f

    .line 236
    goto :goto_46

    .line 234
    :catch_3f
    move-exception v1

    .line 235
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "setFocState::setFocBlockList false exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_46
    :goto_46
    return-void
.end method

.method private setUrspUidForMdo(ZI)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "uid"    # I

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspUidForMdo - enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    .line 178
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setMdoUid(ZI)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23

    .line 182
    goto :goto_2d

    .line 179
    :catch_23
    move-exception v0

    .line 180
    .local v0, "ignored":Landroid/os/RemoteException;
    const-string/jumbo v1, "setUrspUidForMdo exception"

    invoke-static {v1}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 183
    .end local v0    # "ignored":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method


# virtual methods
.method public setUrspMode(IZ[II)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "enabled"    # Z
    .param p3, "uids"    # [I
    .param p4, "netId"    # I

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspMode - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " + uids"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    .line 110
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3a

    .line 111
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2714

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 112
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 113
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 114
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 117
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3a
    return-void
.end method

.method public setUrspNetId(II)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "netId"    # I

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspNetId - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", NetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "msg":Landroid/os/Message;
    if-nez p1, :cond_2d

    .line 76
    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_38

    .line 77
    :cond_2d
    const/4 v1, 0x1

    if-ne p1, v1, :cond_38

    .line 78
    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2713

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 80
    :cond_38
    :goto_38
    if-eqz v0, :cond_3f

    .line 81
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 82
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 84
    :cond_3f
    return-void
.end method

.method public setUrspRule(IIZ)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRule - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    .line 100
    if-nez p1, :cond_3f

    .line 101
    iget-object v0, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 103
    const/4 v1, 0x1

    if-ne p3, v1, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 104
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3f
    return-void
.end method

.method public setUrspRules(IZI[I)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "enabled"    # Z
    .param p3, "netId"    # I
    .param p4, "uids"    # [I

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRules - type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/UrspManager;->getRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->logn(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    if-ne p1, v0, :cond_31

    .line 89
    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2715

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 90
    .local v1, "msg":Landroid/os/Message;
    if-ne p2, v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 91
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 92
    iput-object p4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 95
    .end local v1    # "msg":Landroid/os/Message;
    :cond_31
    return-void
.end method
