.class Lcom/android/server/TelephonyRegistry$Record;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field callback:Lcom/android/internal/telephony/IPhoneStateListener;

.field callerPid:I

.field callerUid:I

.field callingFeatureId:Ljava/lang/String;

.field callingPackage:Ljava/lang/String;

.field context:Landroid/content/Context;

.field deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

.field events:I

.field onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field phoneId:I

.field subId:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 157
    iput v0, p0, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TelephonyRegistry$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/TelephonyRegistry$1;

    .line 136
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry$Record;-><init>()V

    return-void
.end method


# virtual methods
.method canReadCallLog()Z
    .registers 7

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    iget v2, p0, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    iget v3, p0, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$Record;->callingFeatureId:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadCallLog(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 175
    :catch_11
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method matchOnOpportunisticSubscriptionsChangedListener()Z
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method matchOnSubscriptionsChangedListener()Z
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method matchPhoneStateListenerEvent(I)Z
    .registers 3
    .param p1, "events"    # I

    .line 160
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/TelephonyRegistry$Record;->events:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    # invokes: Lcom/android/server/TelephonyRegistry;->pii(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onSubscriptionsChangedListenererCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onOpportunisticSubscriptionsChangedListenererCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$Record;->onOpportunisticSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    return-object v0
.end method
