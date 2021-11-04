.class Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;
.super Landroid/database/ContentObserver;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartManagerSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1124
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 1125
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1126
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 1130
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_10

    .line 1131
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # getter for: Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->access$800(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onChange - mSmartManagerSettingsObserver!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/am/mars/database/MARsDBManager;->getSettingsValueFromDB(Z)V
    invoke-static {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->access$300(Lcom/android/server/am/mars/database/MARsDBManager;Z)V

    .line 1133
    return-void
.end method
