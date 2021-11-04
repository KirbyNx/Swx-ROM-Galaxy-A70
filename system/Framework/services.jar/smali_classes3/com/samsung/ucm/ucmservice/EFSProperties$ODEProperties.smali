.class public Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;
.super Ljava/lang/Object;
.source "EFSProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/ucmservice/EFSProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ODEProperties"
.end annotation


# static fields
.field public static final VERSION_1:I = 0x1

.field public static final VERSION_2:I = 0x2


# instance fields
.field public AID:[B

.field public CertAdminID:I

.field public CertAlias:[B

.field public CertLocation:[B

.field public CertUserID:I

.field public authMaxCnt:I

.field public authMode:I

.field public cofiguratorPkg:[B

.field public cofiguratorSign:[B

.field public csName:[B

.field public defaultLanguage:[B

.field public enabledSCP:I

.field public enabledUCSInODE:I

.field public enabledWrap:I

.field public pinMaxLength:I

.field public pinMinLength:I

.field public pluginSignatureHash:[B

.field public pukMaxLength:I

.field public pukMinLength:I

.field public scpCreationParam:[B

.field public storageType:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 544
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 545
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 546
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 547
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 548
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 549
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 550
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 551
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 552
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 553
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 554
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 555
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    .line 556
    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    .line 557
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    .line 558
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    .line 559
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 560
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 561
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    .line 562
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    .line 563
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    .line 564
    iput-object v1, p0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    .line 565
    return-void
.end method

.method public constructor <init>(I[BIIIIIIIII[BII[B[BI[B[B[B[BI[B)V
    .registers 40
    .param p1, "enabledUCSInODE"    # I
    .param p2, "AID"    # [B
    .param p3, "storageType"    # I
    .param p4, "enabledSCP"    # I
    .param p5, "enabledWrap"    # I
    .param p6, "pinMinLength"    # I
    .param p7, "pinMaxLength"    # I
    .param p8, "authMode"    # I
    .param p9, "authMaxCnt"    # I
    .param p10, "pukMinLength"    # I
    .param p11, "pukMaxLength"    # I
    .param p12, "csName"    # [B
    .param p13, "CertAdminID"    # I
    .param p14, "CertUserID"    # I
    .param p15, "CertAlias"    # [B
    .param p16, "CertLocation"    # [B
    .param p17, "configuratorUid"    # I
    .param p18, "cofiguratorPkg"    # [B
    .param p19, "cofiguratorSign"    # [B
    .param p20, "scpParam"    # [B
    .param p21, "pluginSignatureHash"    # [B
    .param p22, "version"    # I
    .param p23, "defaultLanguage"    # [B

    .line 570
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 572
    move/from16 v1, p1

    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledUCSInODE:I

    .line 573
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->AID:[B

    .line 574
    move/from16 v3, p3

    iput v3, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->storageType:I

    .line 575
    move/from16 v4, p4

    iput v4, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledSCP:I

    .line 576
    move/from16 v5, p5

    iput v5, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->enabledWrap:I

    .line 577
    move/from16 v6, p6

    iput v6, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMinLength:I

    .line 578
    move/from16 v7, p7

    iput v7, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pinMaxLength:I

    .line 579
    move/from16 v8, p8

    iput v8, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMode:I

    .line 580
    move/from16 v9, p9

    iput v9, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->authMaxCnt:I

    .line 581
    move/from16 v10, p10

    iput v10, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMinLength:I

    .line 582
    move/from16 v11, p11

    iput v11, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pukMaxLength:I

    .line 583
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->csName:[B

    .line 584
    move/from16 v13, p13

    iput v13, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAdminID:I

    .line 585
    move/from16 v14, p14

    iput v14, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertUserID:I

    .line 586
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertAlias:[B

    .line 587
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->CertLocation:[B

    .line 588
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorPkg:[B

    .line 589
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->cofiguratorSign:[B

    .line 590
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->scpCreationParam:[B

    .line 591
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->pluginSignatureHash:[B

    .line 592
    move/from16 v1, p22

    iput v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->version:I

    .line 593
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/samsung/ucm/ucmservice/EFSProperties$ODEProperties;->defaultLanguage:[B

    .line 594
    return-void
.end method

.method public static getSCPTypeIndex(Ljava/lang/String;)I
    .registers 6
    .param p0, "scpType"    # Ljava/lang/String;

    .line 621
    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    array-length v0, v0

    .line 622
    .local v0, "length":I
    const/4 v1, -0x1

    .line 623
    .local v1, "index":I
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_28

    .line 628
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, "lowerSCPType":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    if-ge v3, v0, :cond_27

    .line 631
    sget-object v4, Lcom/samsung/ucm/ucmservice/EFSProperties;->SCP_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 632
    move v1, v3

    .line 633
    return v1

    .line 630
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 637
    .end local v3    # "i":I
    :cond_27
    return v1

    .line 624
    .end local v2    # "lowerSCPType":Ljava/lang/String;
    :cond_28
    :goto_28
    const-string v2, "EFSProperties"

    const-string v3, "SCP empty, set SCP_NONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v2, 0x0

    return v2
.end method

.method public static getStorageTypeIndex(Ljava/lang/String;)I
    .registers 6
    .param p0, "storageType"    # Ljava/lang/String;

    .line 597
    sget-object v0, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    array-length v0, v0

    .line 598
    .local v0, "length":I
    const/4 v1, -0x1

    .line 599
    .local v1, "index":I
    if-eqz p0, :cond_2e

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_2e

    .line 603
    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "lowerStorageType":Ljava/lang/String;
    const-string v3, "uicc"

    const-string v4, "sim"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 606
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v0, :cond_2b

    .line 607
    sget-object v4, Lcom/samsung/ucm/ucmservice/EFSProperties;->STORAGE_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 608
    move v1, v3

    .line 609
    return v1

    .line 606
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 614
    .end local v3    # "i":I
    :cond_2b
    const/16 v1, 0x9

    .line 616
    return v1

    .line 600
    .end local v2    # "lowerStorageType":Ljava/lang/String;
    :cond_2e
    :goto_2e
    return v1
.end method
