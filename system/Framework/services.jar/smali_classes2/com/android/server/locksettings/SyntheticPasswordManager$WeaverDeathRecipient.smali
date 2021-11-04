.class Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeaverDeathRecipient"
.end annotation


# instance fields
.field private deathCount:I

.field final synthetic this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;


# direct methods
.method private constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V
    .registers 2

    .line 732
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;->deathCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/SyntheticPasswordManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/locksettings/SyntheticPasswordManager;
    .param p2, "x1"    # Lcom/android/server/locksettings/SyntheticPasswordManager$1;

    .line 732
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .registers 6
    .param p1, "cookie"    # J

    .line 737
    iget v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;->deathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;->deathCount:I

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Weaver HAL died. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;->deathCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyntheticPasswordManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :try_start_24
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    # getter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$1300(Lcom/android/server/locksettings/SyntheticPasswordManager;)Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hardware/weaver/V1_0/IWeaver;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_2e

    .line 743
    goto :goto_34

    .line 741
    :catch_2e
    move-exception v0

    .line 742
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to unlinkToDeath"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 744
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_34
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;
    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->access$1302(Lcom/android/server/locksettings/SyntheticPasswordManager;Landroid/hardware/weaver/V1_0/IWeaver;)Landroid/hardware/weaver/V1_0/IWeaver;

    .line 745
    return-void
.end method
