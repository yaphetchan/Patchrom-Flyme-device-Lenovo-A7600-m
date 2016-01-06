.class public Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargest:J

.field private final mProvider:Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;I)V
    .locals 1
    .param p1, "provider"    # Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;
    .param p2, "insetSide"    # I

    .prologue
    .line 1506
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1503
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    .line 1507
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;

    .line 1508
    iput p2, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    .line 1509
    return-void
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 20
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "restrictedUids"    # [I

    .prologue
    .line 1515
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1517
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 1518
    .local v4, "currentUserId":I
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1520
    .local v9, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;>;"
    const/4 v5, 0x0

    .line 1521
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v11

    .line 1522
    .local v11, "size":I
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v11, :cond_6

    .line 1523
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 1526
    iget v12, v5, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1528
    .local v12, "uid":I
    invoke-static {v12}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1529
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    if-ne v13, v4, :cond_2

    .line 1530
    move v3, v12

    .line 1540
    .local v3, "collapseKey":I
    :goto_2
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    .line 1541
    .local v8, "item":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    if-nez v8, :cond_0

    .line 1542
    new-instance v8, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    .end local v8    # "item":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    invoke-direct {v8, v3}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1543
    .restart local v8    # "item":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1544
    iget v13, v8, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {v9, v13, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1546
    :cond_0
    invoke-virtual {v8, v12}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->addUid(I)V

    .line 1547
    iget-wide v14, v8, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->total:J

    iget-wide v0, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v16, v0

    iget-wide v0, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    add-long v14, v14, v16

    iput-wide v14, v8, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->total:J

    .line 1522
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1521
    .end local v3    # "collapseKey":I
    .end local v6    # "i":I
    .end local v8    # "item":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    .end local v11    # "size":I
    .end local v12    # "uid":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1532
    .restart local v6    # "i":I
    .restart local v11    # "size":I
    .restart local v12    # "uid":I
    :cond_2
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-static {v13}, Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v3

    .restart local v3    # "collapseKey":I
    goto :goto_2

    .line 1534
    .end local v3    # "collapseKey":I
    :cond_3
    const/4 v13, -0x4

    if-eq v12, v13, :cond_4

    const/4 v13, -0x5

    if-ne v12, v13, :cond_5

    .line 1535
    :cond_4
    move v3, v12

    .restart local v3    # "collapseKey":I
    goto :goto_2

    .line 1537
    .end local v3    # "collapseKey":I
    :cond_5
    const/16 v3, 0x3e8

    .restart local v3    # "collapseKey":I
    goto :goto_2

    .line 1550
    .end local v3    # "collapseKey":I
    .end local v12    # "uid":I
    :cond_6
    move-object/from16 v2, p2

    .local v2, "arr$":[I
    array-length v10, v2

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_3
    if-ge v7, v10, :cond_9

    aget v12, v2, v7

    .line 1552
    .restart local v12    # "uid":I
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    if-eq v13, v4, :cond_7

    .line 1550
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1554
    :cond_7
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    .line 1555
    .restart local v8    # "item":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    if-nez v8, :cond_8

    .line 1556
    new-instance v8, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    .end local v8    # "item":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    invoke-direct {v8, v12}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1557
    .restart local v8    # "item":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    const-wide/16 v14, -0x1

    iput-wide v14, v8, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->total:J

    .line 1558
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1559
    iget v13, v8, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {v9, v13, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1561
    :cond_8
    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->restricted:Z

    goto :goto_4

    .line 1564
    .end local v8    # "item":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    .end local v12    # "uid":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1565
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    iget-wide v14, v13, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->total:J

    :goto_5
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 1566
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->notifyDataSetChanged()V

    .line 1567
    return-void

    .line 1565
    :cond_a
    const-wide/16 v14, 0x0

    goto :goto_5
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    iget v0, v0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->key:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 1586
    if-nez p2, :cond_0

    .line 1587
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040047

    invoke-virtual {v5, v6, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1590
    iget v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    if-lez v5, :cond_0

    .line 1591
    iget v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    iget v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v5, v2, v6, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1595
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1597
    .local v0, "context":Landroid/content/Context;
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1598
    .local v4, "text1":Landroid/widget/TextView;
    const v5, 0x102000d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1602
    .local v3, "progress":Landroid/widget/ProgressBar;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;

    .line 1603
    .local v1, "item":Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;

    invoke-static {v5, v1, p2}, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$UidDetailTask;->bindView(Lcom/flyme/deviceoriginalsettings/net/UidDetailProvider;Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;Landroid/view/View;)V

    .line 1605
    iget-boolean v5, v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->restricted:Z

    if-eqz v5, :cond_2

    iget-wide v6, v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->total:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 1606
    const v5, 0x7f0a0bb5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1607
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1613
    :goto_0
    iget-wide v6, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    iget-wide v6, v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->total:J

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$DataUsageAdapter;->mLargest:J

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 1614
    .local v2, "percentTotal":I
    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1616
    return-object p2

    .line 1609
    .end local v2    # "percentTotal":I
    :cond_2
    iget-wide v6, v1, Lcom/flyme/deviceoriginalsettings/DataUsageSummary$AppItem;->total:J

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1610
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method