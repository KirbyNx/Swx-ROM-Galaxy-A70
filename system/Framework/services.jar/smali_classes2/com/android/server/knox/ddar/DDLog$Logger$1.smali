.class Lcom/android/server/knox/ddar/DDLog$Logger$1;
.super Ljava/lang/Object;
.source "DDLog.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/knox/ddar/DDLog$Logger;->cleanupBackupFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/knox/ddar/DDLog$Logger;


# direct methods
.method constructor <init>(Lcom/android/server/knox/ddar/DDLog$Logger;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/knox/ddar/DDLog$Logger;

    .line 292
    iput-object p1, p0, Lcom/android/server/knox/ddar/DDLog$Logger$1;->this$0:Lcom/android/server/knox/ddar/DDLog$Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 295
    const-string v0, "ddar_fw_log"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, ".txt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 296
    const-string v0, "ddar_fw_log.txt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 295
    :goto_1b
    return v0
.end method
