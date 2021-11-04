.class Lcom/android/server/am/mars/database/MARsDBManager$1;
.super Ljava/lang/Object;
.source "MARsDBManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/mars/database/MARsDBManager;

    .line 230
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$1;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 234
    invoke-static {}, Lcom/android/server/am/mars/database/FASDataManager;->getInstance()Lcom/android/server/am/mars/database/FASDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASDataManager;->getFASDataFromDB()Ljava/util/ArrayList;

    move-result-object v0

    .line 235
    .local v0, "fasEntityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_18

    .line 237
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->updateMARsTargetPackages(Ljava/util/ArrayList;)V

    goto :goto_23

    .line 239
    :cond_18
    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsDBManager$1;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    # getter for: Lcom/android/server/am/mars/database/MARsDBManager;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/mars/database/MARsDBManager;->access$800(Lcom/android/server/am/mars/database/MARsDBManager;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Packages database not exist, and not created!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_23
    return-void
.end method
