.class Lcom/android/server/locksettings/LockSettingsServiceLog$1;
.super Ljava/lang/Thread;
.source "LockSettingsServiceLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsServiceLog;->uploadLogFile(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsServiceLog;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsServiceLog;

    .line 106
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 111
    const-wide/16 v0, 0x7d0

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 114
    goto :goto_1e

    .line 112
    :catch_6
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sleep error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsLog"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    # getter for: Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->access$000(Lcom/android/server/locksettings/LockSettingsServiceLog;)[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->val$type:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->prepareUpload()V

    .line 116
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->val$type:I

    # invokes: Lcom/android/server/locksettings/LockSettingsServiceLog;->zipLogFile(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->access$200(Lcom/android/server/locksettings/LockSettingsServiceLog;I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->access$102(Lcom/android/server/locksettings/LockSettingsServiceLog;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    # getter for: Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->access$000(Lcom/android/server/locksettings/LockSettingsServiceLog;)[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->val$type:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->deleteUploadFile()V

    .line 118
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->this$0:Lcom/android/server/locksettings/LockSettingsServiceLog;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->val$type:I

    # invokes: Lcom/android/server/locksettings/LockSettingsServiceLog;->sendToDiagmon(I)V
    invoke-static {v0, v1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->access$300(Lcom/android/server/locksettings/LockSettingsServiceLog;I)V

    .line 119
    return-void
.end method
