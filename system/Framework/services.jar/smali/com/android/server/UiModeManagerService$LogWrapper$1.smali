.class Lcom/android/server/UiModeManagerService$LogWrapper$1;
.super Ljava/util/logging/Formatter;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService$LogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 2054
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 5
    .param p1, "r"    # Ljava/util/logging/LogRecord;

    .line 2057
    # getter for: Lcom/android/server/UiModeManagerService$LogWrapper;->date:Ljava/util/Date;
    invoke-static {}, Lcom/android/server/UiModeManagerService$LogWrapper;->access$5500()Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 2059
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2060
    .local v0, "ret":Ljava/lang/StringBuilder;
    # getter for: Lcom/android/server/UiModeManagerService$LogWrapper;->formatter:Landroid/icu/text/SimpleDateFormat;
    invoke-static {}, Lcom/android/server/UiModeManagerService$LogWrapper;->access$5600()Landroid/icu/text/SimpleDateFormat;

    move-result-object v1

    # getter for: Lcom/android/server/UiModeManagerService$LogWrapper;->date:Ljava/util/Date;
    invoke-static {}, Lcom/android/server/UiModeManagerService$LogWrapper;->access$5500()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2061
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
