.class Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleBackupRestoreInfo"
.end annotation


# static fields
.field private static final BACKUP:Ljava/lang/String; = "Multiple BACKUP"

.field private static final RESTORE:Ljava/lang/String; = "Multiple RESTORE"

.field private static final RESTORE_INTERNAL:Ljava/lang/String; = "Multiple RESTORE INTERNAL"


# instance fields
.field key:I

.field name:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field reason:Ljava/lang/String;

.field result:Z

.field type:Ljava/lang/String;

.field when:Ljava/lang/String;

.field which:I


# direct methods
.method constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "key"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "result"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 7204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7205
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->type:Ljava/lang/String;

    .line 7206
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->which:I

    .line 7207
    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->key:I

    .line 7208
    iput-object p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->name:Ljava/lang/String;

    .line 7209
    iput-object p5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->packageName:Ljava/lang/String;

    .line 7210
    iput-boolean p6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->result:Z

    .line 7211
    iput-object p7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->reason:Ljava/lang/String;

    .line 7213
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->setTime()V

    .line 7214
    return-void
.end method

.method private setTime()V
    .registers 6

    .line 7217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 7218
    .local v0, "time":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 7219
    .local v2, "date":Ljava/util/Date;
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    .line 7220
    .local v3, "format":Ljava/text/DateFormat;
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 7221
    .local v4, "currentTime":Ljava/lang/String;
    iput-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->when:Ljava/lang/String;

    .line 7222
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 7226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultipleBackupRestoreInfo >> \n\twhen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->when:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\ttype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\twhich = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->which:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tkey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->key:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n\tname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tpackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\tresult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->result:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n\treason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MultipleBackupRestoreInfo;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
