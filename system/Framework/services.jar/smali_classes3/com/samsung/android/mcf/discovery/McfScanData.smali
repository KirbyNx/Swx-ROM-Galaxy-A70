.class public Lcom/samsung/android/mcf/discovery/McfScanData;
.super Ljava/lang/Object;
.source "McfScanData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/discovery/McfScanData$Builder;
    }
.end annotation


# static fields
.field public static final CONTENTS_FILTER_ALL:I = 0x0

.field public static final CONTENTS_FILTER_BYTE:I = 0x1

.field public static final CONTENTS_FILTER_JSON:I = 0x2

.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field public static final INFINITE_TIMEOUT:I = 0x0

.field public static final KEY_CONTENTS_FILTER:Ljava/lang/String; = "contentsFilter"

.field public static final KEY_REPORT_TYPE:Ljava/lang/String; = "reportType"

.field public static final KEY_SCAN_MODE:Ljava/lang/String; = "scanMode"

.field public static final KEY_SCREEN_OFF_SCAN:Ljava/lang/String; = "screenOffScan"

.field public static final KEY_SERVICE_ID:Ljava/lang/String; = "serviceID"

.field public static final KEY_TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final MAX_TIMEOUT:I = 0x36ee80

.field public static final MODE_BALANCED:I = 0x2

.field public static final MODE_LOW_LATENCY:I = 0x3

.field public static final MODE_LOW_POWER:I = 0x0

.field public static final MODE_NO_SCAN:I = -0x1

.field public static final REPORT_TYPE_ALWAYS:I = 0x1

.field public static final REPORT_TYPE_DATA_CHANGED:I


# instance fields
.field public final bleSID:I

.field public final contentsFilter:I

.field public final needScreenOffScan:Z

.field public final reportType:I

.field public scanMode:I

.field public timeout:I


# direct methods
.method public constructor <init>(IIZIII)V
    .registers 7

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    .line 114
    iput p2, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    .line 115
    iput-boolean p3, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    .line 116
    iput p4, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    .line 117
    iput p5, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    .line 118
    iput p6, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    return-void
.end method

.method public synthetic constructor <init>(IIZIIILcom/samsung/android/mcf/discovery/McfScanData$1;)V
    .registers 8

    .line 9
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/mcf/discovery/McfScanData;-><init>(IIZIII)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-string v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    .line 123
    const-string v0, "scanMode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    .line 124
    const-string v0, "screenOffScan"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    .line 125
    const-string v0, "reportType"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    .line 126
    const-string v0, "timeout"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    .line 127
    const-string v0, "contentsFilter"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;I)V
    .registers 5

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const-string v0, "serviceID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    .line 132
    iput p2, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    .line 133
    const-string p2, "screenOffScan"

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    .line 134
    iput v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    .line 135
    iput v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    .line 136
    iput v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    return-void
.end method


# virtual methods
.method public getBleSID()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 4

    .line 153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    const-string v2, "serviceID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    const-string v2, "scanMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    iget-boolean v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    const-string v2, "screenOffScan"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    const-string v2, "reportType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    const-string v2, "timeout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    const-string v2, "contentsFilter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getContentsFilter()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    return v0
.end method

.method public getReportType()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    return v0
.end method

.method public getScanMode()I
    .registers 2

    .line 79
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    return v0
.end method

.method public getTimeout()I
    .registers 2

    .line 98
    iget v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    return v0
.end method

.method public isNeedScreenOffScan()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    return v0
.end method

.method public setScanMode(I)V
    .registers 2

    .line 86
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    return-void
.end method

.method public setTimeout(I)V
    .registers 2

    .line 109
    iput p1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->bleSID:I

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->scanMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->needScreenOffScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", report="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->reportType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/mcf/discovery/McfScanData;->contentsFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
