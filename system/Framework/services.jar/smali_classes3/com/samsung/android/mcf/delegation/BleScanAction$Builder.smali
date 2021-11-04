.class public final Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
.super Ljava/lang/Object;
.source "BleScanAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/delegation/BleScanAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    const-string v0, "className"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    const-string p2, "type"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/mcf/delegation/BleScanAction;
    .registers 3

    .line 230
    new-instance v0, Lcom/samsung/android/mcf/delegation/BleScanAction;

    iget-object v1, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Lcom/samsung/android/mcf/delegation/BleScanAction;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppData(Ljava/lang/String;)Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "appData"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFlags(I)Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/samsung/android/mcf/delegation/BleScanAction$Builder;->bundle:Landroid/os/Bundle;

    const-string v1, "flags"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method
