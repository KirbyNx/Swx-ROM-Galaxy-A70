.class public Lcom/samsung/android/mcf/delegation/McfBleDelegation$ScanIntent;
.super Ljava/lang/Object;
.source "McfBleDelegation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/delegation/McfBleDelegation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanIntent"
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .registers 2

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/samsung/android/mcf/delegation/McfBleDelegation$ScanIntent;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getAppData()Ljava/lang/String;
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/McfBleDelegation$ScanIntent;->intent:Landroid/content/Intent;

    const-string v1, "appData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/McfBleDelegation$ScanIntent;->intent:Landroid/content/Intent;

    const-string v1, "scanError"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRequestId()I
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/McfBleDelegation$ScanIntent;->intent:Landroid/content/Intent;

    const-string v1, "requestId"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScanResult()Landroid/bluetooth/le/ScanResult;
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/McfBleDelegation$ScanIntent;->intent:Landroid/content/Intent;

    const-string v1, "scanResults"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    return-object v0
.end method
