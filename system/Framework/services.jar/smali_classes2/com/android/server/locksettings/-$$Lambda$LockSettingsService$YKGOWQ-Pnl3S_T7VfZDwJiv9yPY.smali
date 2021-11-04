.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$YKGOWQ-Pnl3S_T7VfZDwJiv9yPY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$YKGOWQ-Pnl3S_T7VfZDwJiv9yPY;->f$0:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    iput p2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$YKGOWQ-Pnl3S_T7VfZDwJiv9yPY;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$YKGOWQ-Pnl3S_T7VfZDwJiv9yPY;->f$0:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    iget v1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$YKGOWQ-Pnl3S_T7VfZDwJiv9yPY;->f$1:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$onSyntheticPasswordDeserted$11(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;ILcom/android/server/SdpManagerService;)V

    return-void
.end method
