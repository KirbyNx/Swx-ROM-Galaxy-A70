.class Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;
.super Ljava/lang/Object;
.source "SemExclusiveTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskSettings"
.end annotation


# instance fields
.field private OFF:I

.field private ON:I

.field private defaultValue:I

.field private key:Ljava/lang/String;

.field private rawKey:Ljava/lang/String;

.field private tableType:I

.field final synthetic this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V
    .registers 2

    .line 745
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->ON:I

    .line 747
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->OFF:I

    .line 752
    iput p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->defaultValue:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService;
    .param p2, "x1"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$1;

    .line 745
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;-><init>(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;

    .line 745
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCurrentSettings(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)Z
    .registers 4
    .param p1, "userStatus"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 812
    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->getCurrentSettingsValue(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)I

    move-result v0

    iget v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->ON:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 814
    .local v0, "ret":Z
    :goto_b
    return v0
.end method

.method public getCurrentSettingsValue(Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)I
    .registers 7
    .param p1, "userStatus"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 793
    const/4 v0, -0x1

    .line 795
    .local v0, "ret":I
    iget v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_35

    const/4 v2, 0x2

    if-eq v1, v2, :cond_20

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    goto :goto_4a

    .line 803
    :cond_d
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->access$500(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->defaultValue:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 804
    goto :goto_4a

    .line 800
    :cond_20
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->access$500(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->defaultValue:I

    iget v4, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 801
    goto :goto_4a

    .line 797
    :cond_35
    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->access$500(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->defaultValue:I

    iget v4, p1, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 798
    nop

    .line 808
    :goto_4a
    return v0
.end method

.method public putCurrentSettingsValue(ILcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 6
    .param p1, "value"    # I
    .param p2, "userStatus"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 819
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    goto :goto_40

    .line 827
    :cond_c
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->access$500(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 828
    goto :goto_40

    .line 824
    :cond_1c
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->access$500(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget v2, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 825
    goto :goto_40

    .line 821
    :cond_2e
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->this$0:Lcom/android/server/sepunion/SemExclusiveTaskManagerService;

    # getter for: Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService;->access$500(Lcom/android/server/sepunion/SemExclusiveTaskManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    iget v2, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 822
    nop

    .line 832
    :goto_40
    iget-object v0, p2, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;->mIgnoreSettingsList:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 833
    return-void
.end method

.method public registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 7
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "contentObserver"    # Landroid/database/ContentObserver;

    .line 774
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_2c

    .line 784
    :cond_e
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v3, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 786
    goto :goto_2c

    .line 780
    :cond_18
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v3, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 782
    goto :goto_2c

    .line 776
    :cond_22
    iget-object v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v3, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 778
    nop

    .line 790
    :goto_2c
    return-void
.end method

.method public setCustomOffValue(I)V
    .registers 2
    .param p1, "offValue"    # I

    .line 848
    iput p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->OFF:I

    .line 849
    return-void
.end method

.method public setCustomOnValue(I)V
    .registers 2
    .param p1, "onValue"    # I

    .line 844
    iput p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->ON:I

    .line 845
    return-void
.end method

.method public setSettingsKey(Ljava/lang/String;)V
    .registers 9
    .param p1, "raw_key"    # Ljava/lang/String;

    .line 757
    iput-object p1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->rawKey:Ljava/lang/String;

    .line 758
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4a16fc5d

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_36

    const v4, -0x3604a489

    if-eq v3, v4, :cond_2b

    const v4, -0x34e38dd1    # -1.0252847E7f

    if-eq v3, v4, :cond_21

    :cond_20
    goto :goto_41

    :cond_21
    const-string/jumbo v3, "system"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_42

    :cond_2b
    const-string/jumbo v1, "secure"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    move v1, v6

    goto :goto_42

    :cond_36
    const-string/jumbo v1, "global"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    move v1, v5

    goto :goto_42

    :goto_41
    const/4 v1, -0x1

    :goto_42
    if-eqz v1, :cond_50

    if-eq v1, v6, :cond_4d

    if-eq v1, v5, :cond_49

    goto :goto_53

    .line 765
    :cond_49
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    .line 766
    goto :goto_53

    .line 763
    :cond_4d
    iput v5, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    .line 764
    goto :goto_53

    .line 761
    :cond_50
    iput v6, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->tableType:I

    .line 762
    nop

    .line 770
    :goto_53
    aget-object v1, v0, v6

    iput-object v1, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->key:Ljava/lang/String;

    .line 771
    return-void
.end method

.method public turnOnOff(ZLcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V
    .registers 4
    .param p1, "status"    # Z
    .param p2, "userStatus"    # Lcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;

    .line 836
    if-eqz p1, :cond_8

    .line 837
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->ON:I

    invoke-virtual {p0, v0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->putCurrentSettingsValue(ILcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    goto :goto_d

    .line 839
    :cond_8
    iget v0, p0, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->OFF:I

    invoke-virtual {p0, v0, p2}, Lcom/android/server/sepunion/SemExclusiveTaskManagerService$TaskSettings;->putCurrentSettingsValue(ILcom/android/server/sepunion/SemExclusiveTaskManagerService$UserStatus;)V

    .line 841
    :goto_d
    return-void
.end method
