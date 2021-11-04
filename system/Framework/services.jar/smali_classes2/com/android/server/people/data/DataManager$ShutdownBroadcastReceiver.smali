.class Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;)V
    .registers 2

    .line 971
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Lcom/android/server/people/data/DataManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/people/data/DataManager;
    .param p2, "x1"    # Lcom/android/server/people/data/DataManager$1;

    .line 971
    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;-><init>(Lcom/android/server/people/data/DataManager;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$DataManager$ShutdownBroadcastReceiver(Lcom/android/server/people/data/UserData;)V
    .registers 5
    .param p1, "userData"    # Lcom/android/server/people/data/UserData;

    .line 977
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    # getter for: Lcom/android/server/people/data/DataManager;->mNotificationListeners:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/people/data/DataManager;->access$2000(Lcom/android/server/people/data/DataManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/people/data/UserData;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/DataManager$NotificationListener;

    .line 981
    .local v0, "listener":Lcom/android/server/people/data/DataManager$NotificationListener;
    if-eqz v0, :cond_15

    .line 982
    invoke-virtual {v0}, Lcom/android/server/people/data/DataManager$NotificationListener;->cleanupCachedShortcuts()V

    .line 984
    :cond_15
    const-string v1, "DataManager"

    const-string v2, "ShutdownBroadcastReceiver: saveToDisk start"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    sget-object v2, Lcom/android/server/people/data/-$$Lambda$bkfsFF2Vc2A9q-5JeJQbUu98BkQ;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$bkfsFF2Vc2A9q-5JeJQbUu98BkQ;

    invoke-virtual {p1, v2}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 986
    const-string v2, "ShutdownBroadcastReceiver: end"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 975
    const-string v0, "DataManager"

    const-string v1, "ShutdownBroadcastReceiver: start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;->this$0:Lcom/android/server/people/data/DataManager;

    new-instance v1, Lcom/android/server/people/data/-$$Lambda$DataManager$ShutdownBroadcastReceiver$aRsBzypxwxnyM2MmxQLyAevgelY;

    invoke-direct {v1, p0}, Lcom/android/server/people/data/-$$Lambda$DataManager$ShutdownBroadcastReceiver$aRsBzypxwxnyM2MmxQLyAevgelY;-><init>(Lcom/android/server/people/data/DataManager$ShutdownBroadcastReceiver;)V

    # invokes: Lcom/android/server/people/data/DataManager;->forAllUnlockedUsers(Ljava/util/function/Consumer;)V
    invoke-static {v0, v1}, Lcom/android/server/people/data/DataManager;->access$1500(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V

    .line 988
    return-void
.end method
