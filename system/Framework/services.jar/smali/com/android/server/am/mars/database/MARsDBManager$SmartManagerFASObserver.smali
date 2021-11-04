.class Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;
.super Landroid/database/ContentObserver;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartManagerFASObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1138
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 1139
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1140
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1144
    if-nez p2, :cond_3

    .line 1145
    return-void

    .line 1147
    :cond_3
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_22

    .line 1148
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # getter for: Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->access$800(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange - mSmartManagerFASObserver! Uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    :cond_22
    const/4 v0, 0x0

    const-string v1, "MARs-self"

    invoke-virtual {p2, v1, v0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1152
    return-void

    .line 1155
    :cond_2c
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # getter for: Lcom/android/server/am/mars/database/MARsDBManager;->mMARsDBManagerHandler:Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;
    invoke-static {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->access$200(Lcom/android/server/am/mars/database/MARsDBManager;)Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager$SmartManagerFASObserver;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # getter for: Lcom/android/server/am/mars/database/MARsDBManager;->mFASDBupdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/am/mars/database/MARsDBManager;->access$1400(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1157
    return-void
.end method
