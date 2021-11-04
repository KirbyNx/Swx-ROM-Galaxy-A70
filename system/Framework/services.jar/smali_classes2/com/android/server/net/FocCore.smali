.class public Lcom/android/server/net/FocCore;
.super Lcom/android/server/net/UrspCore;
.source "FocCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/FocCore$NetworkRequestInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UrspService_FOC"


# instance fields
.field private mFocNetId:I

.field private mFocPduRequest:Z

.field private mFocState:Z

.field private mFocUidRule:Landroid/util/SparseBooleanArray;

.field private mNri:Lcom/android/server/net/FocCore$NetworkRequestInfo;

.field private final mUrspAppListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/IUrspAppListener;",
            ">;"
        }
    .end annotation
.end field

.field private sUrspConnListener:Landroid/net/IUrspConnectionListener;


# direct methods
.method public constructor <init>(Lcom/android/server/net/UrspService;)V
    .registers 3
    .param p1, "urspService"    # Lcom/android/server/net/UrspService;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspCore;-><init>(Lcom/android/server/net/UrspService;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/FocCore;->mFocState:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/server/net/FocCore;->mFocPduRequest:Z

    .line 56
    iput v0, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    .line 57
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    .line 58
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/FocCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    .line 242
    new-instance v0, Lcom/android/server/net/FocCore$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/FocCore$1;-><init>(Lcom/android/server/net/FocCore;)V

    iput-object v0, p0, Lcom/android/server/net/FocCore;->sUrspConnListener:Landroid/net/IUrspConnectionListener;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/FocCore;)Landroid/net/IUrspConnectionListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/FocCore;

    .line 51
    iget-object v0, p0, Lcom/android/server/net/FocCore;->sUrspConnListener:Landroid/net/IUrspConnectionListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/net/FocCore;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/FocCore;

    .line 51
    iget-boolean v0, p0, Lcom/android/server/net/FocCore;->mFocPduRequest:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/net/FocCore;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/FocCore;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lcom/android/server/net/FocCore;->mFocPduRequest:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/net/FocCore;)Lcom/android/server/net/FocCore$NetworkRequestInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/FocCore;

    .line 51
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mNri:Lcom/android/server/net/FocCore$NetworkRequestInfo;

    return-object v0
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 293
    const-string v0, "UrspService_FOC"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 294
    const-string v0, "UrspService_FOC"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "fout"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 278
    const-string v0, "FoC status: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget-boolean v0, p0, Lcom/android/server/net/FocCore;->mFocState:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 280
    const-string v0, "FoC NetId: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget v0, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 282
    const-string v0, "FoC UIDs:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 284
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    iget-object v1, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 285
    const-string v1, "UID="

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 288
    .end local v0    # "i":I
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 290
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 291
    return-void
.end method

.method public getAllUrspRule()[I
    .registers 7

    .line 156
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 157
    .local v0, "uids":[I
    iget-object v1, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 158
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    :try_start_b
    iget-object v3, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 159
    iget-object v3, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 160
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 161
    .local v4, "focUidPolicy":Z
    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    .line 162
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v0, v5

    .line 158
    .end local v3    # "uid":I
    .end local v4    # "focUidPolicy":Z
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 165
    .end local v2    # "i":I
    :cond_2a
    monitor-exit v1

    .line 167
    return-object v0

    .line 165
    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public getUrspMode()Z
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 119
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/net/FocCore;->mFocState:Z

    monitor-exit v0

    return v1

    .line 120
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getUrspNetId()I
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 178
    :try_start_7
    iget v1, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    monitor-exit v0

    return v1

    .line 179
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isUrspRuleEnabled(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 171
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 172
    :try_start_7
    iget-object v1, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 173
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public registerUrspAppListner(Landroid/net/IUrspAppListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/IUrspAppListener;

    .line 192
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 193
    return-void
.end method

.method public requestPduSession(IZLandroid/os/Messenger;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "enabled"    # Z
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestPduSession. type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/net/FocCore;->mFocPduRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UrspService_FOC"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-boolean v0, p0, Lcom/android/server/net/FocCore;->mFocPduRequest:Z

    if-eq v0, p2, :cond_6c

    .line 226
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 227
    :try_start_39
    new-instance v1, Lcom/android/server/net/FocCore$NetworkRequestInfo;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/android/server/net/FocCore$NetworkRequestInfo;-><init>(Lcom/android/server/net/FocCore;ILandroid/os/Messenger;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/net/FocCore;->mNri:Lcom/android/server/net/FocCore$NetworkRequestInfo;

    .line 228
    iget-object v1, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    .line 229
    invoke-virtual {v1, p2, v2, v3}, Lcom/android/server/net/UrspConnectivityController;->requestConnection(ZII)V

    .line 230
    if-eqz p2, :cond_5a

    .line 231
    iget-object v1, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/FocCore;->sUrspConnListener:Landroid/net/IUrspConnectionListener;

    .line 232
    invoke-virtual {v1, v2}, Lcom/android/server/net/UrspConnectivityController;->registerUrspConnListener(Landroid/net/IUrspConnectionListener;)V

    goto :goto_65

    .line 234
    :cond_5a
    iget-object v1, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/FocCore;->sUrspConnListener:Landroid/net/IUrspConnectionListener;

    .line 235
    invoke-virtual {v1, v2}, Lcom/android/server/net/UrspConnectivityController;->unregisterUrspConnListener(Landroid/net/IUrspConnectionListener;)V

    .line 237
    :goto_65
    iput-boolean p2, p0, Lcom/android/server/net/FocCore;->mFocPduRequest:Z

    .line 238
    monitor-exit v0

    goto :goto_6c

    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_39 .. :try_end_6b} :catchall_69

    throw v1

    .line 240
    :cond_6c
    :goto_6c
    return-void
.end method

.method public setUrspMode(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .line 105
    iget-boolean v0, p0, Lcom/android/server/net/FocCore;->mFocState:Z

    if-eq p1, v0, :cond_28

    .line 107
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 108
    :try_start_b
    iget-boolean v1, p0, Lcom/android/server/net/FocCore;->mFocState:Z

    if-eq v1, p1, :cond_23

    .line 109
    iput-boolean p1, p0, Lcom/android/server/net/FocCore;->mFocState:Z

    .line 110
    iget-object v1, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;

    move-result-object v1

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/net/FocCore;->mFocState:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/server/net/FocCore;->getAllUrspRule()[I

    move-result-object v4

    iget v5, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspMode(IZ[II)V

    .line 113
    :cond_23
    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_25

    throw v1

    .line 115
    :cond_28
    :goto_28
    return-void
.end method

.method public setUrspNetId(I)V
    .registers 6
    .param p1, "netId"    # I

    .line 183
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 184
    :try_start_7
    iput p1, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    .line 185
    iget-object v1, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;

    move-result-object v1

    iget v2, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    .line 186
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetId(II)V

    .line 187
    iget-object v1, p0, Lcom/android/server/net/FocCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    iget v2, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/net/FocCore;->sendUrspAppBroadcast(Landroid/os/RemoteCallbackList;II)V

    .line 188
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public setUrspRule(ZI)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "uid"    # I

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUrspRule, uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/FocCore;->log(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 127
    :try_start_24
    iget-object v1, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 128
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_49

    .line 129
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2713

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 130
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 131
    if-ne p1, v2, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 132
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 133
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 134
    return-void

    .line 128
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public setUrspRules(Z[I)V
    .registers 10
    .param p1, "enabled"    # Z
    .param p2, "uids"    # [I

    .line 137
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 138
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3d

    aget v4, p2, v2

    .line 139
    .local v4, "uid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUrspRules, uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", enabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/net/FocCore;->log(Ljava/lang/String;)V

    .line 141
    iget-object v5, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v5}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 142
    :try_start_31
    iget-object v6, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 143
    monitor-exit v5

    .line 138
    .end local v4    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 143
    .restart local v4    # "uid":I
    :catchall_3a
    move-exception v0

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3a

    throw v0

    .line 145
    .end local v4    # "uid":I
    :cond_3d
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;

    move-result-object v0

    iget v2, p0, Lcom/android/server/net/FocCore;->mFocNetId:I

    .line 146
    invoke-virtual {v0, v3, p1, v2, p2}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspRules(IZI[I)V

    .line 148
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x2714

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 149
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 150
    if-ne p1, v3, :cond_59

    move v1, v3

    :cond_59
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 151
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 153
    return-void
.end method

.method public unregisterUrspAppListner(Landroid/net/IUrspAppListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/IUrspAppListener;

    .line 196
    iget-object v0, p0, Lcom/android/server/net/FocCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 197
    return-void
.end method

.method public writePolicy(Ljava/io/FileOutputStream;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 10
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    const-string v0, "foc-uid-policy"

    const-string v1, "foc-policy"

    const/4 v2, 0x0

    :try_start_5
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    iget-object v4, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_35

    .line 204
    iget-object v4, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 205
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/net/FocCore;->mFocUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    .line 207
    .local v5, "policy":Z
    if-nez v5, :cond_20

    goto :goto_32

    .line 209
    :cond_20
    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    const-string/jumbo v6, "uid"

    invoke-static {p2, v6, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 211
    const-string/jumbo v6, "policy"

    invoke-static {p2, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 212
    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    .end local v4    # "uid":I
    .end local v5    # "policy":Z
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 215
    .end local v3    # "i":I
    :cond_35
    invoke-interface {p2, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_38} :catch_39

    .line 219
    goto :goto_4e

    .line 217
    :catch_39
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to write policy file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/FocCore;->log(Ljava/lang/String;)V

    .line 220
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4e
    return-void
.end method
