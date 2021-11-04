.class public Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;
.super Ljava/lang/Object;
.source "KeyCodeMediatorImpl.java"

# interfaces
.implements Lcom/android/server/enterprise/common/KeyCodeMediator;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyCodeMediator"


# instance fields
.field private mCustomCallback:Lcom/android/server/enterprise/common/KeyCodeCustomCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mRestrictedKeyCodeBackup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRestrictionCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictedKeyCodeBackup:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mHandler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mCustomCallback:Lcom/android/server/enterprise/common/KeyCodeCustomCallback;

    return-void
.end method

.method private block(I)V
    .registers 3
    .param p1, "keyCode"    # I

    .line 113
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->blockKeyCode(I)V

    .line 114
    return-void
.end method

.method private clear(I)V
    .registers 3
    .param p1, "keyCode"    # I

    .line 105
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->clearAllConfiguration(I)V

    .line 106
    return-void
.end method

.method private customize(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/enterprise/common/KeyCustomInfo;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p1, "keyCustomInfo":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/enterprise/common/KeyCustomInfo;>;"
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->customizeKeyCode(Ljava/util/Set;)V

    .line 110
    return-void
.end method

.method private getAllRestrictedKeyCodes()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 163
    .local v0, "restrictedKeyCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    .line 164
    .local v2, "each":Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;
    invoke-interface {v2}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->getRestrictedKeyCodes()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 165
    invoke-interface {v2}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->getRestrictedKeyCodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 167
    .end local v2    # "each":Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;
    :cond_24
    goto :goto_b

    .line 168
    :cond_25
    return-object v0
.end method

.method private hasPreviousConfigurations(I)Z
    .registers 3
    .param p1, "keyCode"    # I

    .line 101
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->hasConfigurations(I)Z

    move-result v0

    return v0
.end method

.method private needToBlock(I)Z
    .registers 5
    .param p1, "keyCode"    # I

    .line 135
    iget-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    .line 136
    .local v1, "each":Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;
    invoke-interface {v1, p1}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->isKeyCodeInputAllowed(I)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "keyCode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must be blocked by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-interface {v1}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v2, "KeyCodeMediator"

    invoke-static {v2, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x1

    return v0

    .line 143
    .end local v1    # "each":Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;
    :cond_3d
    goto :goto_6

    .line 144
    :cond_3e
    const/4 v0, 0x0

    return v0
.end method

.method private needToCustomize(Ljava/util/Set;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/enterprise/common/KeyCustomInfo;",
            ">;)Z"
        }
    .end annotation

    .line 117
    .local p1, "keyCustomInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/enterprise/common/KeyCustomInfo;>;"
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 118
    .local v0, "ret":Z
    :goto_b
    if-eqz v0, :cond_27

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need To customize keyCode with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->toString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyCodeMediator"

    invoke-static {v2, v1}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_27
    return v0
.end method

.method private toString(Ljava/util/Set;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/enterprise/common/KeyCustomInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 125
    .local p1, "keyCustomInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/enterprise/common/KeyCustomInfo;>;"
    const/16 v0, 0xff

    .line 126
    .local v0, "LENGTH_LIMIT":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xff

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/common/KeyCustomInfo;

    .line 128
    .local v3, "each":Lcom/android/server/enterprise/common/KeyCustomInfo;
    const-string/jumbo v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .end local v3    # "each":Lcom/android/server/enterprise/common/KeyCustomInfo;
    goto :goto_d

    .line 131
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public deregisterCallback(Lcom/android/server/enterprise/common/KeyCodeCustomCallback;)V
    .registers 3
    .param p1, "cb"    # Lcom/android/server/enterprise/common/KeyCodeCustomCallback;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mCustomCallback:Lcom/android/server/enterprise/common/KeyCodeCustomCallback;

    .line 68
    return-void
.end method

.method public deregisterCallback(Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;)V
    .registers 3
    .param p1, "cb"    # Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    .line 54
    iget-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    .line 84
    .local v0, "keyCode":I
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->hasPreviousConfigurations(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 85
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->clear(I)V

    .line 87
    :cond_b
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->needToBlock(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    .line 88
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->block(I)V

    .line 89
    return v2

    .line 92
    :cond_16
    iget-object v1, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mCustomCallback:Lcom/android/server/enterprise/common/KeyCodeCustomCallback;

    if-eqz v1, :cond_1f

    invoke-interface {v1, v0}, Lcom/android/server/enterprise/common/KeyCodeCustomCallback;->getKeyCustomInfo(I)Ljava/util/Set;

    move-result-object v1

    goto :goto_24

    .line 93
    :cond_1f
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_24
    nop

    .line 94
    .local v1, "keyCustomInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/enterprise/common/KeyCustomInfo;>;"
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->needToCustomize(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 95
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->customize(Ljava/util/Set;)V

    .line 97
    :cond_2e
    return v2
.end method

.method public onAdminRemoved(I)V
    .registers 5
    .param p1, "adminUid"    # I

    .line 182
    iget-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictedKeyCodeBackup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 184
    .local v0, "keyCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictedKeyCodeBackup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 186
    .local v2, "eachKey":I
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->update(I)Z

    .line 187
    .end local v2    # "eachKey":I
    goto :goto_19

    .line 188
    :cond_2d
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 5
    .param p1, "adminUid"    # I

    .line 157
    invoke-direct {p0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->getAllRestrictedKeyCodes()Ljava/util/Set;

    move-result-object v0

    .line 158
    .local v0, "restrictedKeyCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictedKeyCodeBackup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method public onSystemReady()V
    .registers 4

    .line 149
    invoke-direct {p0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->getAllRestrictedKeyCodes()Ljava/util/Set;

    move-result-object v0

    .line 151
    .local v0, "keyCodes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 152
    .local v2, "eachKey":I
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->update(I)Z

    .line 153
    .end local v2    # "eachKey":I
    goto :goto_8

    .line 154
    :cond_1c
    return-void
.end method

.method public registerCallback(Lcom/android/server/enterprise/common/KeyCodeCustomCallback;)V
    .registers 4
    .param p1, "cb"    # Lcom/android/server/enterprise/common/KeyCodeCustomCallback;

    .line 59
    iget-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mCustomCallback:Lcom/android/server/enterprise/common/KeyCodeCustomCallback;

    if-nez v0, :cond_7

    .line 62
    iput-object p1, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mCustomCallback:Lcom/android/server/enterprise/common/KeyCodeCustomCallback;

    .line 63
    return-void

    .line 60
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "KeyCodeCustomCallback must be set only one time!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerCallback(Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;)V
    .registers 3
    .param p1, "cb"    # Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    .line 49
    iget-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public update(I)Z
    .registers 4
    .param p1, "keyCode"    # I

    .line 72
    iget-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 74
    const/4 v0, 0x1

    return v0

    .line 76
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update for keycode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyCodeMediator"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    return v0
.end method
