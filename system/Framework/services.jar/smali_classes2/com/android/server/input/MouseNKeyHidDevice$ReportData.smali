.class Lcom/android/server/input/MouseNKeyHidDevice$ReportData;
.super Ljava/lang/Object;
.source "MouseNKeyHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/MouseNKeyHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportData"
.end annotation


# instance fields
.field public data:[B

.field final synthetic this$0:Lcom/android/server/input/MouseNKeyHidDevice;


# direct methods
.method private constructor <init>(Lcom/android/server/input/MouseNKeyHidDevice;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/android/server/input/MouseNKeyHidDevice$ReportData;->this$0:Lcom/android/server/input/MouseNKeyHidDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/MouseNKeyHidDevice;Lcom/android/server/input/MouseNKeyHidDevice$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/input/MouseNKeyHidDevice;
    .param p2, "x1"    # Lcom/android/server/input/MouseNKeyHidDevice$1;

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/input/MouseNKeyHidDevice$ReportData;-><init>(Lcom/android/server/input/MouseNKeyHidDevice;)V

    return-void
.end method
