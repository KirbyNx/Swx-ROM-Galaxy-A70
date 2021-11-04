.class public Lcom/android/server/enterprise/RestrictionToastManager;
.super Ljava/lang/Object;
.source "RestrictionToastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;
    }
.end annotation


# static fields
.field private static final MSG_REMOVE_ID:I = 0x1

.field private static final MSG_REMOVE_TIMEOUT:I = 0xdac

.field private static final MSG_SHOW_TOAST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RestrictionToastManager"

.field private static mContext:Landroid/content/Context;

.field private static final mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .registers 1

    .line 63
    sget-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .line 63
    sget-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    sput-object p0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RestrictionToastManagerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v1, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/enterprise/RestrictionToastManager;->mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    .line 87
    return-void
.end method

.method public static show(I)V
    .registers 4
    .param p0, "messageResId"    # I

    .line 98
    if-ltz p0, :cond_19

    sget-object v0, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    goto :goto_19

    .line 105
    :cond_7
    :try_start_7
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_e} :catch_10

    .line 112
    nop

    .line 114
    return-void

    .line 108
    .end local v0    # "msg":Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 109
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string v1, "RestrictionToastManager"

    const-string v2, "Resource Id not found: will not display any restriction message toast"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 99
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    :cond_19
    :goto_19
    return-void
.end method

.method public static declared-synchronized show(Ljava/lang/String;)V
    .registers 8
    .param p0, "msg"    # Ljava/lang/String;

    const-class v0, Lcom/android/server/enterprise/RestrictionToastManager;

    monitor-enter v0

    .line 124
    if-eqz p0, :cond_5d

    :try_start_5
    sget-object v1, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_a

    goto :goto_5d

    .line 129
    :cond_a
    sget-object v1, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_5a

    if-eqz v1, :cond_14

    .line 130
    monitor-exit v0

    return-void

    .line 133
    :cond_14
    :try_start_14
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 134
    .local v1, "message":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "message"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 137
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 138
    sget-object v3, Lcom/android/server/enterprise/RestrictionToastManager;->mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    sget-object v3, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v3, "RestrictionToastManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added message to recently displayed queue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    sget-object v3, Lcom/android/server/enterprise/RestrictionToastManager;->mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    const/4 v4, 0x1

    invoke-static {v3, v4, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 144
    .local v3, "deleteMsg":Landroid/os/Message;
    sget-object v4, Lcom/android/server/enterprise/RestrictionToastManager;->mRestrictionToastHandler:Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;

    const-wide/16 v5, 0xdac

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_58
    .catchall {:try_start_14 .. :try_end_58} :catchall_5a

    .line 145
    monitor-exit v0

    return-void

    .line 123
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "deleteMsg":Landroid/os/Message;
    .end local p0    # "msg":Ljava/lang/String;
    :catchall_5a
    move-exception p0

    monitor-exit v0

    throw p0

    .line 125
    .restart local p0    # "msg":Ljava/lang/String;
    :cond_5d
    :goto_5d
    monitor-exit v0

    return-void
.end method
