.class Lcom/android/server/power/ShutdownThread$7;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$progressListener:Landroid/os/RecoverySystem$ProgressListener;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;

    .line 1187
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$7;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1190
    const-string v0, "ShutdownThread"

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "recovery"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    .line 1192
    .local v1, "rs":Landroid/os/RecoverySystem;
    const/4 v2, 0x0

    .line 1193
    .local v2, "filename":Ljava/lang/String;
    const/4 v3, 0x2

    .line 1194
    .local v3, "retry":I
    :goto_13
    const/4 v4, 0x0

    if-lez v3, :cond_3e

    .line 1196
    :try_start_16
    sget-object v5, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 1197
    iget-object v5, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/power/ShutdownThread$7;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    invoke-static {v5, v6, v7}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V

    .line 1198
    const-string/jumbo v5, "uncrypt finished. No need to retry uncrypt"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_34} :catch_35

    .line 1199
    goto :goto_3e

    .line 1200
    :catch_35
    move-exception v4

    .line 1201
    .local v4, "e":Ljava/lang/Exception;
    add-int/lit8 v3, v3, -0x1

    .line 1202
    const-string v5, "Error uncrypting file"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1203
    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_13

    .line 1205
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    const/4 v5, 0x1

    aput-boolean v5, v0, v4

    .line 1206
    return-void
.end method
