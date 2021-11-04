.class public Lcom/android/server/sepunion/FriendsManagerLocalService;
.super Lcom/samsung/android/sepunion/FriendsManagerLocal;
.source "FriendsManagerLocalService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/android/server/sepunion/FriendsManagerLocalService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/FriendsManagerLocalService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/sepunion/FriendsManagerLocal;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/sepunion/FriendsManagerLocalService;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Lcom/android/server/sepunion/FriendsManagerLocalService;->initialize()V

    .line 40
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "system"    # Ljava/lang/String;

    .line 56
    if-eqz p4, :cond_11

    const-string v0, "friends"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 57
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz v0, :cond_11

    .line 58
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 61
    :cond_11
    return-void
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4
    .param p1, "action"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 48
    iget-object v0, p0, Lcom/android/server/sepunion/FriendsManagerLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-nez v0, :cond_6

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_6
    invoke-virtual {v0, p1, p2}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .registers 3

    .line 43
    new-instance v0, Lcom/android/server/sepunion/friends/FrsServiceImpl;

    iget-object v1, p0, Lcom/android/server/sepunion/FriendsManagerLocalService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/FriendsManagerLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    .line 44
    return-void
.end method
