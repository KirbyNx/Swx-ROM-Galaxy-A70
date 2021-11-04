.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$UPlO7vKxq2740LHUhX_04vFQ3jk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$UPlO7vKxq2740LHUhX_04vFQ3jk;->f$0:I

    iput-object p2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$UPlO7vKxq2740LHUhX_04vFQ3jk;->f$1:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$UPlO7vKxq2740LHUhX_04vFQ3jk;->f$0:I

    iget-object v1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$UPlO7vKxq2740LHUhX_04vFQ3jk;->f$1:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    check-cast p1, Lcom/android/server/sdp/SdpManagerInternal;

    invoke-static {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$migrateWithAuthToken$12(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;Lcom/android/server/sdp/SdpManagerInternal;)V

    return-void
.end method
