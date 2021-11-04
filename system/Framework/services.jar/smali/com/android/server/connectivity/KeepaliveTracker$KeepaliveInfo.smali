.class Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
.super Ljava/lang/Object;
.source "KeepaliveTracker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/KeepaliveTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeepaliveInfo"
.end annotation


# static fields
.field private static final NOT_STARTED:I = 0x1

.field private static final STARTED:I = 0x3

.field private static final STARTING:I = 0x2

.field private static final STOPPING:I = 0x4

.field public static final TYPE_NATT:I = 0x1

.field public static final TYPE_TCP:I = 0x2


# instance fields
.field private final mCallback:Landroid/net/ISocketKeepaliveCallback;

.field private final mFd:Ljava/io/FileDescriptor;

.field private final mInterval:I

.field private final mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private final mPacket:Landroid/net/KeepalivePacketData;

.field private final mPid:I

.field private final mPrivileged:Z

.field private mSlot:I

.field private mStartedState:I

.field private final mType:I

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/connectivity/KeepaliveTracker;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/KeepaliveTracker;Landroid/net/ISocketKeepaliveCallback;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/KeepalivePacketData;IILjava/io/FileDescriptor;)V
    .registers 13
    .param p1, "this$0"    # Lcom/android/server/connectivity/KeepaliveTracker;
    .param p2, "callback"    # Landroid/net/ISocketKeepaliveCallback;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "packet"    # Landroid/net/KeepalivePacketData;
    .param p5, "interval"    # I
    .param p6, "type"    # I
    .param p7, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SocketKeepalive$InvalidSocketException;
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    .line 154
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mStartedState:I

    .line 162
    iput-object p2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPid:I

    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    .line 165
    # getter for: Lcom/android/server/connectivity/KeepaliveTracker;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/connectivity/KeepaliveTracker;->access$000(Lcom/android/server/connectivity/KeepaliveTracker;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPid:I

    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    const-string v4, "android.permission.PACKET_KEEPALIVE_OFFLOAD"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    iput-boolean v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPrivileged:Z

    .line 167
    iput-object p3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 168
    iput-object p4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    .line 169
    iput p5, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    .line 170
    iput p6, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mType:I

    .line 177
    const-string v0, "KeepaliveTracker"

    if-eqz p7, :cond_43

    .line 178
    :try_start_3a
    invoke-static {p7}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mFd:Ljava/io/FileDescriptor;

    goto :goto_67

    .line 191
    :catch_41
    move-exception v1

    goto :goto_89

    .line 180
    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " calls with null fd"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-boolean v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPrivileged:Z

    if-eqz v1, :cond_80

    .line 185
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mType:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_77

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mFd:Ljava/io/FileDescriptor;
    :try_end_67
    .catch Landroid/system/ErrnoException; {:try_start_3a .. :try_end_67} :catch_41

    .line 194
    :goto_67
    nop

    .line 197
    :try_start_68
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    invoke-interface {v0}, Landroid/net/ISocketKeepaliveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_71} :catch_72

    .line 200
    goto :goto_76

    .line 198
    :catch_72
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->binderDied()V

    .line 201
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_76
    return-void

    .line 186
    :cond_77
    :try_start_77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null fd is not allowed for tcp socket keepalives."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .end local p1    # "this$0":Lcom/android/server/connectivity/KeepaliveTracker;
    .end local p2    # "callback":Landroid/net/ISocketKeepaliveCallback;
    .end local p3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local p4    # "packet":Landroid/net/KeepalivePacketData;
    .end local p5    # "interval":I
    .end local p6    # "type":I
    .end local p7    # "fd":Ljava/io/FileDescriptor;
    throw v1

    .line 182
    .restart local p0    # "this":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .restart local p1    # "this$0":Lcom/android/server/connectivity/KeepaliveTracker;
    .restart local p2    # "callback":Landroid/net/ISocketKeepaliveCallback;
    .restart local p3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local p4    # "packet":Landroid/net/KeepalivePacketData;
    .restart local p5    # "interval":I
    .restart local p6    # "type":I
    .restart local p7    # "fd":Ljava/io/FileDescriptor;
    :cond_80
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "null fd is not allowed for unprivileged access."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .end local p1    # "this$0":Lcom/android/server/connectivity/KeepaliveTracker;
    .end local p2    # "callback":Landroid/net/ISocketKeepaliveCallback;
    .end local p3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local p4    # "packet":Landroid/net/KeepalivePacketData;
    .end local p5    # "interval":I
    .end local p6    # "type":I
    .end local p7    # "fd":Ljava/io/FileDescriptor;
    throw v1
    :try_end_89
    .catch Landroid/system/ErrnoException; {:try_start_77 .. :try_end_89} :catch_41

    .line 192
    .local v1, "e":Landroid/system/ErrnoException;
    .restart local p0    # "this":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .restart local p1    # "this$0":Lcom/android/server/connectivity/KeepaliveTracker;
    .restart local p2    # "callback":Landroid/net/ISocketKeepaliveCallback;
    .restart local p3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local p4    # "packet":Landroid/net/KeepalivePacketData;
    .restart local p5    # "interval":I
    .restart local p6    # "type":I
    .restart local p7    # "fd":Ljava/io/FileDescriptor;
    :goto_89
    const-string v2, "Cannot dup fd: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    new-instance v0, Landroid/net/SocketKeepalive$InvalidSocketException;

    const/16 v2, -0x19

    invoke-direct {v0, v2, v1}, Landroid/net/SocketKeepalive$InvalidSocketException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)Landroid/net/ISocketKeepaliveCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 128
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 128
    iget v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 128
    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isValid()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 128
    iget v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mStartedState:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .param p1, "x1"    # I

    .line 128
    iput p1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mStartedState:I

    return p1
.end method

.method private checkInterval()I
    .registers 3

    .line 261
    iget v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_d

    const/16 v1, 0xe10

    if-le v0, v1, :cond_b

    goto :goto_d

    .line 264
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 262
    :cond_d
    :goto_d
    const/16 v0, -0x18

    return v0
.end method

.method private checkLimit()I
    .registers 4

    .line 302
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    # getter for: Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/connectivity/KeepaliveTracker;->access$100(Lcom/android/server/connectivity/KeepaliveTracker;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 303
    .local v0, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-nez v0, :cond_13

    .line 304
    const/16 v1, -0x14

    return v1

    .line 306
    :cond_13
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 307
    # getter for: Lcom/android/server/connectivity/KeepaliveTracker;->mSupportedKeepalives:[I
    invoke-static {v1}, Lcom/android/server/connectivity/KeepaliveTracker;->access$200(Lcom/android/server/connectivity/KeepaliveTracker;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 306
    invoke-static {v1, v2}, Landroid/net/util/KeepaliveUtils;->getSupportedKeepalivesForNetworkCapabilities([ILandroid/net/NetworkCapabilities;)I

    move-result v1

    .line 308
    .local v1, "supported":I
    if-nez v1, :cond_26

    const/16 v2, -0x1e

    return v2

    .line 309
    :cond_26
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-le v2, v1, :cond_2f

    const/16 v2, -0x20

    return v2

    .line 310
    :cond_2f
    const/4 v2, 0x0

    return v2
.end method

.method private checkNetworkConnected()I
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_d

    .line 245
    const/16 v0, -0x14

    return v0

    .line 247
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private checkPermission()I
    .registers 13

    .line 268
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    # getter for: Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/connectivity/KeepaliveTracker;->access$100(Lcom/android/server/connectivity/KeepaliveTracker;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 269
    .local v0, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-nez v0, :cond_13

    .line 270
    const/16 v1, -0x14

    return v1

    .line 273
    :cond_13
    iget-boolean v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPrivileged:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    return v2

    .line 275
    :cond_19
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 276
    # getter for: Lcom/android/server/connectivity/KeepaliveTracker;->mSupportedKeepalives:[I
    invoke-static {v1}, Lcom/android/server/connectivity/KeepaliveTracker;->access$200(Lcom/android/server/connectivity/KeepaliveTracker;)[I

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 275
    invoke-static {v1, v3}, Landroid/net/util/KeepaliveUtils;->getSupportedKeepalivesForNetworkCapabilities([ILandroid/net/NetworkCapabilities;)I

    move-result v1

    .line 278
    .local v1, "supported":I
    const/4 v3, 0x0

    .line 279
    .local v3, "takenUnprivilegedSlots":I
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 280
    .local v5, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    iget-boolean v6, v5, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPrivileged:Z

    if-nez v6, :cond_42

    add-int/lit8 v3, v3, 0x1

    .line 281
    .end local v5    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :cond_42
    goto :goto_30

    .line 282
    :cond_43
    iget-object v4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    # getter for: Lcom/android/server/connectivity/KeepaliveTracker;->mReservedPrivilegedSlots:I
    invoke-static {v4}, Lcom/android/server/connectivity/KeepaliveTracker;->access$300(Lcom/android/server/connectivity/KeepaliveTracker;)I

    move-result v4

    sub-int v4, v1, v4

    const/16 v5, -0x20

    if-le v3, v4, :cond_50

    .line 283
    return v5

    .line 287
    :cond_50
    const/4 v4, 0x0

    .line 288
    .local v4, "unprivilegedCountSameUid":I
    iget-object v6, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    # getter for: Lcom/android/server/connectivity/KeepaliveTracker;->mKeepalives:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/connectivity/KeepaliveTracker;->access$100(Lcom/android/server/connectivity/KeepaliveTracker;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 289
    .local v7, "kaForNetwork":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_73
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_88

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 290
    .local v9, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    iget v10, v9, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    iget v11, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    if-ne v10, v11, :cond_87

    .line 291
    add-int/lit8 v4, v4, 0x1

    .line 293
    .end local v9    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :cond_87
    goto :goto_73

    .line 294
    .end local v7    # "kaForNetwork":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    :cond_88
    goto :goto_5f

    .line 295
    :cond_89
    iget-object v6, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    # getter for: Lcom/android/server/connectivity/KeepaliveTracker;->mAllowedUnprivilegedSlotsForUid:I
    invoke-static {v6}, Lcom/android/server/connectivity/KeepaliveTracker;->access$400(Lcom/android/server/connectivity/KeepaliveTracker;)I

    move-result v6

    if-le v4, v6, :cond_92

    .line 296
    return v5

    .line 298
    :cond_92
    return v2
.end method

.method private checkSourceAddress()I
    .registers 4

    .line 252
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 253
    .local v1, "address":Ljava/net/InetAddress;
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    invoke-virtual {v2}, Landroid/net/KeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 254
    const/4 v0, 0x0

    return v0

    .line 256
    .end local v1    # "address":Ljava/net/InetAddress;
    :cond_26
    goto :goto_c

    .line 257
    :cond_27
    const/16 v0, -0x15

    return v0
.end method

.method private isValid()I
    .registers 4

    .line 314
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-enter v0

    .line 315
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkInterval()I

    move-result v1

    .line 316
    .local v1, "error":I
    if-nez v1, :cond_e

    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkLimit()I

    move-result v2

    move v1, v2

    .line 317
    :cond_e
    if-nez v1, :cond_15

    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkPermission()I

    move-result v2

    move v1, v2

    .line 318
    :cond_15
    if-nez v1, :cond_1c

    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkNetworkConnected()I

    move-result v2

    move v1, v2

    .line 319
    :cond_1c
    if-nez v1, :cond_23

    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->checkSourceAddress()I

    move-result v2

    move v1, v2

    .line 320
    :cond_23
    monitor-exit v0

    return v1

    .line 321
    .end local v1    # "error":I
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private startedStateString(I)Ljava/lang/String;
    .registers 4
    .param p1, "state"    # I

    .line 208
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_17

    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    .line 212
    const-string v0, "STOPPING"

    return-object v0

    .line 214
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_17
    const-string v0, "STARTED"

    return-object v0

    .line 210
    :cond_1a
    const-string v0, "STARTING"

    return-object v0

    .line 209
    :cond_1d
    const-string v0, "NOT_STARTED"

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 234
    const/16 v0, -0xa

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->stop(I)V

    .line 235
    return-void
.end method

.method public getNai()Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method onFileDescriptorInitiatedStop(I)V
    .registers 5
    .param p1, "socketKeepaliveReason"    # I

    .line 427
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 428
    return-void
.end method

.method start(I)V
    .registers 10
    .param p1, "slot"    # I

    .line 325
    iput p1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    .line 326
    invoke-direct {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isValid()I

    move-result v0

    .line 327
    .local v0, "error":I
    if-nez v0, :cond_a5

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting keepalive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeepaliveTracker"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mType:I

    const/4 v3, 0x1

    const v4, 0x8100b

    const/4 v5, 0x0

    const v6, 0x81010

    const/4 v7, 0x2

    if-eq v1, v3, :cond_8d

    if-eq v1, v7, :cond_5d

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting keepalive with unknown type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 352
    return-void

    .line 338
    :cond_5d
    :try_start_5d
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    # getter for: Lcom/android/server/connectivity/KeepaliveTracker;->mTcpController:Lcom/android/server/connectivity/TcpKeepaliveController;
    invoke-static {v1}, Lcom/android/server/connectivity/KeepaliveTracker;->access$500(Lcom/android/server/connectivity/KeepaliveTracker;)Lcom/android/server/connectivity/TcpKeepaliveController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mFd:Ljava/io/FileDescriptor;

    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/connectivity/TcpKeepaliveController;->startSocketMonitor(Ljava/io/FileDescriptor;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;I)V
    :try_end_6a
    .catch Landroid/net/SocketKeepalive$InvalidSocketException; {:try_start_5d .. :try_end_6a} :catch_80

    .line 342
    nop

    .line 343
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    invoke-virtual {v1, v6, p1, v5, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 346
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    .line 347
    invoke-virtual {v1, v4, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 348
    goto :goto_a2

    .line 339
    :catch_80
    move-exception v1

    .line 340
    .local v1, "e":Landroid/net/SocketKeepalive$InvalidSocketException;
    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget v4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    const/16 v5, -0x19

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 341
    return-void

    .line 331
    .end local v1    # "e":Landroid/net/SocketKeepalive$InvalidSocketException;
    :cond_8d
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    invoke-virtual {v1, v6, p1, v5, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 333
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    iget-object v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    .line 334
    invoke-virtual {v1, v4, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 335
    nop

    .line 354
    :goto_a2
    iput v7, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mStartedState:I

    .line 359
    return-void

    .line 356
    :cond_a5
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget v3, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 357
    return-void
.end method

.method stop(I)V
    .registers 8
    .param p1, "reason"    # I

    .line 362
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 363
    .local v0, "uid":I
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping keepalive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeepaliveTracker"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mStartedState:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_81

    const/4 v5, 0x4

    if-eq v1, v5, :cond_80

    .line 380
    iput v5, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mStartedState:I

    .line 381
    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mType:I

    if-eq v1, v4, :cond_67

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5c

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping keepalive with unknown type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 383
    :cond_5c
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    # getter for: Lcom/android/server/connectivity/KeepaliveTracker;->mTcpController:Lcom/android/server/connectivity/TcpKeepaliveController;
    invoke-static {v1}, Lcom/android/server/connectivity/KeepaliveTracker;->access$500(Lcom/android/server/connectivity/KeepaliveTracker;)Lcom/android/server/connectivity/TcpKeepaliveController;

    move-result-object v1

    iget v4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v4}, Lcom/android/server/connectivity/TcpKeepaliveController;->stopSocketMonitor(I)V

    .line 386
    :cond_67
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v4, 0x8100c

    iget v5, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 387
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v4, 0x81011

    iget v5, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 389
    goto :goto_8b

    .line 378
    :cond_80
    return-void

    .line 374
    :cond_81
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v4, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget v5, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    # invokes: Lcom/android/server/connectivity/KeepaliveTracker;->cleanupStoppedKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    invoke-static {v1, v4, v5}, Lcom/android/server/connectivity/KeepaliveTracker;->access$600(Lcom/android/server/connectivity/KeepaliveTracker;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 375
    nop

    .line 397
    :goto_8b
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mFd:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_b0

    .line 399
    :try_start_8f
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_92
    .catch Landroid/system/ErrnoException; {:try_start_8f .. :try_end_92} :catch_93

    .line 404
    goto :goto_b0

    .line 400
    :catch_93
    move-exception v1

    .line 403
    .local v1, "e":Landroid/system/ErrnoException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error closing fd for keepalive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mSlot:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_b0
    :goto_b0
    if-nez p1, :cond_ce

    .line 409
    :try_start_b2
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    invoke-interface {v1}, Landroid/net/ISocketKeepaliveCallback;->onStopped()V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_b7} :catch_b8

    goto :goto_cd

    .line 410
    :catch_b8
    move-exception v1

    .line 411
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarded onStop callback: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_cd
    goto :goto_f4

    .line 413
    :cond_ce
    const/4 v1, -0x2

    if-ne p1, v1, :cond_ed

    .line 415
    :try_start_d1
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    invoke-interface {v1}, Landroid/net/ISocketKeepaliveCallback;->onDataReceived()V
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_d6} :catch_d7

    goto :goto_ec

    .line 416
    :catch_d7
    move-exception v1

    .line 417
    .restart local v1    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarded onDataReceived callback: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_ec
    goto :goto_f4

    .line 420
    :cond_ed
    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->this$0:Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->notifyErrorCallback(Landroid/net/ISocketKeepaliveCallback;I)V

    .line 423
    :goto_f4
    invoke-virtual {p0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->unlinkDeathRecipient()V

    .line 424
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeepaliveInfo [ type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " startedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mStartedState:I

    .line 221
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->startedStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    .line 223
    invoke-virtual {v1}, Landroid/net/KeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    invoke-virtual {v2}, Landroid/net/KeepalivePacketData;->getSrcPort()I

    move-result v2

    invoke-static {v1, v2}, Landroid/net/util/IpUtils;->addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    .line 225
    invoke-virtual {v1}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    invoke-virtual {v2}, Landroid/net/KeepalivePacketData;->getDstPort()I

    move-result v2

    invoke-static {v1, v2}, Landroid/net/util/IpUtils;->addressAndPortToString(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " privileged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPrivileged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " packetData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mPacket:Landroid/net/KeepalivePacketData;

    .line 228
    invoke-virtual {v1}, Landroid/net/KeepalivePacketData;->getPacket()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    return-object v0
.end method

.method unlinkDeathRecipient()V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->mCallback:Landroid/net/ISocketKeepaliveCallback;

    if-eqz v0, :cond_c

    .line 239
    invoke-interface {v0}, Landroid/net/ISocketKeepaliveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 241
    :cond_c
    return-void
.end method
