.class Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$MdmStateObserver;
.super Landroid/database/ContentObserver;
.source "RestrictionPolicyOberver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MdmStateObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 56
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 60
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 61
    # invokes: Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getMdmPolicy()Z
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->access$000()Z

    move-result v0

    .line 62
    .local v0, "allowed":Z
    if-eqz v0, :cond_1a

    sget-boolean v1, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    if-nez v1, :cond_1a

    # getter for: Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->access$100()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 63
    # getter for: Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->access$100()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;->onNfcRestrictionPolicyChanged(Z)V

    .line 64
    :cond_1a
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mIsMdmAllowed:Z

    .line 65
    return-void
.end method
