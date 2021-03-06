.class public Lcom/oneplus/lib/menu/ActionMenuPresenter;
.super Lcom/oneplus/lib/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

.field mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

.field mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 80
    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_abc_action_menu_layout:I

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 66
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 76
    new-instance p1, Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

    return-void
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 5

    .line 314
    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 317
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 319
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 320
    instance-of v4, v3, Lcom/oneplus/lib/menu/MenuView$ItemView;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/oneplus/lib/menu/MenuView$ItemView;

    .line 321
    invoke-interface {v4}, Lcom/oneplus/lib/menu/MenuView$ItemView;->getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v4

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public bindItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Lcom/oneplus/lib/menu/MenuView$ItemView;)V
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-interface {p2, p1, v0}, Lcom/oneplus/lib/menu/MenuView$ItemView;->initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V

    .line 205
    iget-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast p1, Lcom/oneplus/lib/menu/ActionMenuView;

    .line 206
    check-cast p2, Lcom/oneplus/lib/menu/ActionMenuItemView;

    .line 207
    invoke-virtual {p2, p1}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setItemInvoker(Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;)V

    .line 209
    iget-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez p1, :cond_0

    .line 210
    new-instance p1, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 212
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {p2, p0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setPopupCallback(Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;)V

    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 1

    .line 374
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 375
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideSubMenus()Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 271
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 272
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result p0

    return p0
.end method

.method public flagActionItems()Z
    .locals 19

    move-object/from16 v0, p0

    .line 414
    iget-object v1, v0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v3, v2

    .line 422
    :goto_0
    iget v4, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItems:I

    .line 423
    iget v5, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 424
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 425
    iget-object v7, v0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    move v8, v2

    move v9, v8

    move v10, v9

    move v11, v4

    move v4, v10

    :goto_1
    if-ge v4, v3, :cond_4

    .line 432
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 433
    invoke-virtual {v13}, Lcom/oneplus/lib/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 435
    :cond_1
    invoke-virtual {v13}, Lcom/oneplus/lib/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    .line 440
    :goto_2
    iget-boolean v12, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v12, :cond_3

    invoke-virtual {v13}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v12

    if-eqz v12, :cond_3

    move v11, v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 448
    :cond_4
    iget-boolean v4, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_6

    if-nez v8, :cond_5

    add-int/2addr v10, v9

    if-le v10, v11, :cond_6

    :cond_5
    add-int/lit8 v11, v11, -0x1

    :cond_6
    sub-int/2addr v11, v9

    .line 454
    iget-object v4, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 455
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 459
    iget-boolean v8, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v8, :cond_7

    .line 460
    iget v8, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMinCellSize:I

    div-int v9, v5, v8

    .line 461
    rem-int v10, v5, v8

    .line 462
    div-int/2addr v10, v9

    add-int/2addr v8, v10

    goto :goto_3

    :cond_7
    move v8, v2

    move v9, v8

    :goto_3
    move v13, v2

    move v10, v5

    move v5, v13

    :goto_4
    if-ge v5, v3, :cond_1d

    .line 467
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 469
    invoke-virtual {v14}, Lcom/oneplus/lib/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 470
    iget-object v15, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v14, v15, v7}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 471
    iget-object v12, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    if-nez v12, :cond_8

    .line 472
    iput-object v15, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 474
    :cond_8
    iget-boolean v12, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v12, :cond_9

    .line 475
    invoke-static {v15, v8, v9, v6, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v12

    sub-int/2addr v9, v12

    goto :goto_5

    .line 478
    :cond_9
    invoke-virtual {v15, v6, v6}, Landroid/view/View;->measure(II)V

    .line 480
    :goto_5
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v10, v12

    if-nez v13, :cond_a

    goto :goto_6

    :cond_a
    move v12, v13

    .line 485
    :goto_6
    invoke-virtual {v14}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v13

    const/4 v15, 0x1

    if-eqz v13, :cond_b

    .line 487
    invoke-virtual {v4, v13, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 489
    :cond_b
    invoke-virtual {v14, v15}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    move v0, v2

    move/from16 v17, v3

    move v13, v12

    goto/16 :goto_e

    .line 490
    :cond_c
    invoke-virtual {v14}, Lcom/oneplus/lib/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 493
    invoke-virtual {v14}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v12

    .line 494
    invoke-virtual {v4, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-gtz v11, :cond_d

    if-eqz v15, :cond_f

    :cond_d
    if-lez v10, :cond_f

    .line 495
    iget-boolean v2, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v2, :cond_e

    if-lez v9, :cond_f

    :cond_e
    const/4 v2, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    :goto_7
    move/from16 v16, v2

    if-eqz v2, :cond_16

    .line 499
    iget-object v2, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v14, v2, v7}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move/from16 v17, v3

    .line 500
    iget-object v3, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    if-nez v3, :cond_10

    .line 501
    iput-object v2, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 503
    :cond_10
    iget-boolean v3, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    .line 504
    invoke-static {v2, v8, v9, v6, v3}, Lcom/oneplus/lib/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v18

    sub-int v9, v9, v18

    if-nez v18, :cond_12

    const/16 v16, 0x0

    goto :goto_8

    .line 511
    :cond_11
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 513
    :cond_12
    :goto_8
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v10, v2

    if-nez v13, :cond_13

    move v13, v2

    .line 519
    :cond_13
    iget-boolean v2, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v2, :cond_14

    if-ltz v10, :cond_15

    goto :goto_9

    :cond_14
    add-int v2, v10, v13

    if-lez v2, :cond_15

    :goto_9
    const/4 v2, 0x1

    goto :goto_a

    :cond_15
    const/4 v2, 0x0

    :goto_a
    and-int v2, v16, v2

    goto :goto_b

    :cond_16
    move/from16 v17, v3

    :goto_b
    if-eqz v2, :cond_17

    if-eqz v12, :cond_17

    const/4 v3, 0x1

    .line 528
    invoke-virtual {v4, v12, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_d

    :cond_17
    if-eqz v15, :cond_1a

    const/4 v3, 0x0

    .line 531
    invoke-virtual {v4, v12, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v5, :cond_1a

    .line 533
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 534
    invoke-virtual {v15}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v0

    if-ne v0, v12, :cond_19

    .line 536
    invoke-virtual {v15}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-eqz v0, :cond_18

    add-int/lit8 v11, v11, 0x1

    :cond_18
    const/4 v0, 0x0

    .line 537
    invoke-virtual {v15, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    :cond_19
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_c

    :cond_1a
    :goto_d
    if-eqz v2, :cond_1b

    add-int/lit8 v11, v11, -0x1

    .line 544
    :cond_1b
    invoke-virtual {v14, v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    const/4 v0, 0x0

    goto :goto_e

    :cond_1c
    move v0, v2

    move/from16 v17, v3

    .line 547
    invoke-virtual {v14, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    :goto_e
    add-int/lit8 v5, v5, 0x1

    move v2, v0

    move/from16 v3, v17

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_1d
    const/4 v2, 0x1

    return v2
.end method

.method public getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 187
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 191
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x8

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    .line 193
    check-cast p3, Lcom/oneplus/lib/menu/ActionMenuView;

    .line 194
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 195
    invoke-virtual {p3, p0}, Lcom/oneplus/lib/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 196
    invoke-virtual {p3, p0}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 169
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v0, :cond_1

    .line 170
    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-eqz v2, :cond_0

    .line 356
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return v1

    .line 361
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz p0, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->dismiss()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public hideSubMenus()Z
    .locals 0

    .line 385
    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz p0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->dismiss()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 4

    .line 85
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 89
    invoke-static {p1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;

    move-result-object p1

    .line 90
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 94
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 99
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_2

    .line 100
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->getMaxActionButtons()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItems:I

    .line 103
    :cond_2
    iget p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 104
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 105
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-nez v0, :cond_4

    .line 106
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v2, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    .line 107
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 110
    iput-boolean v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 112
    :cond_3
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 113
    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v2, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 117
    :cond_5
    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    .line 120
    :goto_0
    iput p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    const/high16 p1, 0x42400000    # 48.0f

    .line 122
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMinCellSize:I

    .line 125
    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isOverflowMenuShowing()Z
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 0

    .line 555
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 556
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 129
    iget-boolean p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->getMaxActionButtons()I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItems:I

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 133
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 568
    instance-of v0, p1, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;

    if-nez v0, :cond_0

    return-void

    .line 572
    :cond_0
    check-cast p1, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;

    .line 573
    iget p1, p1, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez p1, :cond_1

    .line 574
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 576
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 577
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 561
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;-><init>()V

    .line 562
    iget p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    iput p0, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 7

    .line 277
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 280
    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eq v2, v3, :cond_1

    .line 281
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/SubMenuBuilder;

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 292
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 295
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v2

    move v3, v1

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    .line 297
    invoke-virtual {p1, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 298
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 304
    :cond_4
    :goto_2
    new-instance v2, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/oneplus/lib/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 305
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 306
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuPopupHelper;->setGravity(I)V

    .line 307
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->showSubMenu()V

    .line 309
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    return v4
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    .line 154
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    return-void
.end method

.method public setMenuView(Lcom/oneplus/lib/menu/ActionMenuView;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    .line 594
    iget-object p0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/menu/ActionMenuView;->initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 162
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    return-void
.end method

.method public shouldIncludeItem(ILcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    .line 217
    invoke-virtual {p2}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionButton()Z

    move-result p0

    return p0
.end method

.method public showOverflowMenu()Z
    .locals 7

    .line 333
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v1, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v3, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v5, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 336
    new-instance v1, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 338
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 342
    invoke-super {p0, v0}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateMenuView(Z)V
    .locals 4

    .line 222
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 224
    iget-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 226
    iget-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 227
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object p1

    .line 228
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 230
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->getSupportActionProvider()Lcom/oneplus/lib/widget/ActionProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {v3, p0}, Lcom/oneplus/lib/widget/ActionProvider;->setSubUiVisibilityListener(Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    :cond_1
    iget-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz p1, :cond_2

    .line 238
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 241
    :goto_1
    iget-boolean v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 242
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 244
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    move v0, v2

    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    .line 251
    iget-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-nez p1, :cond_5

    .line 252
    new-instance p1, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    .line 254
    :cond_5
    iget-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 255
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_6

    .line 257
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 259
    :cond_6
    iget-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast p1, Lcom/oneplus/lib/menu/ActionMenuView;

    .line 260
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 262
    :cond_7
    iget-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-ne p1, v0, :cond_8

    .line 263
    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 266
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast p1, Lcom/oneplus/lib/menu/ActionMenuView;

    iget-boolean p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/menu/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method
