.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$2LX43W67_F5UcWZTzPNrnuN791k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$2LX43W67_F5UcWZTzPNrnuN791k;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$2LX43W67_F5UcWZTzPNrnuN791k;->f$0:I

    check-cast p1, Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$onSyntheticPasswordInitialized$9(ILcom/android/server/pm/PersonaManagerService;)V

    return-void
.end method
