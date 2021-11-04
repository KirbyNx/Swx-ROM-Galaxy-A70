.class Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;
.super Landroid/database/ContentObserver;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartManagerDefaultAllowedListObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1111
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 1112
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1113
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 1117
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_10

    .line 1118
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # getter for: Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->access$800(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onChange - mSmartManagerDefaultAllowedListObserver!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerDefaultAllowedListObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # invokes: Lcom/android/server/am/mars/database/MARsDBManager;->getDefaultAllowedListDBValues()V
    invoke-static {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->access$400(Lcom/android/server/am/mars/database/MARsDBManager;)V

    .line 1120
    return-void
.end method
