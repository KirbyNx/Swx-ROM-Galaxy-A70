.class public Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;
.super Ljava/lang/Object;
.source "GearVrManagerExternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/GearVrManagerExternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VrActivityRecord"
.end annotation


# instance fields
.field callingPackage:Landroid/content/ComponentName;

.field displayId:I

.field requestedVrComponent:Landroid/content/ComponentName;

.field userId:I

.field xrFlags:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;ILandroid/content/ComponentName;I)V
    .registers 6
    .param p1, "xrFlags"    # I
    .param p2, "requestedVrComponent"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callingPackage"    # Landroid/content/ComponentName;
    .param p5, "displayId"    # I

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput p1, p0, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->xrFlags:I

    .line 548
    iput-object p2, p0, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 549
    iput p3, p0, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->userId:I

    .line 550
    iput-object p4, p0, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->callingPackage:Landroid/content/ComponentName;

    .line 551
    iput p5, p0, Lcom/android/server/vr/GearVrManagerExternal$VrActivityRecord;->displayId:I

    .line 552
    return-void
.end method
