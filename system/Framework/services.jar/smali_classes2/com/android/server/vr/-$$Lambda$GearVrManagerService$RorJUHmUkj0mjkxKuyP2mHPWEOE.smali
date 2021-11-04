.class public final synthetic Lcom/android/server/vr/-$$Lambda$GearVrManagerService$RorJUHmUkj0mjkxKuyP2mHPWEOE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/vr/XrSettings$OnXrSettingsListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vr/-$$Lambda$GearVrManagerService$RorJUHmUkj0mjkxKuyP2mHPWEOE;->f$0:Lcom/android/server/vr/GearVrManagerService;

    return-void
.end method


# virtual methods
.method public final onXrSettingsChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/vr/-$$Lambda$GearVrManagerService$RorJUHmUkj0mjkxKuyP2mHPWEOE;->f$0:Lcom/android/server/vr/GearVrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/GearVrManagerService;->lambda$onBootPhase$0$GearVrManagerService()V

    return-void
.end method
