.class Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lcom/oneplus/support/viewpager/widget/ViewPager;)V
    .locals 0

    .line 3100
    iput-object p1, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 3105
    iget-object p0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 3109
    iget-object p0, p0, Lcom/oneplus/support/viewpager/widget/ViewPager$PagerObserver;->this$0:Lcom/oneplus/support/viewpager/widget/ViewPager;

    invoke-virtual {p0}, Lcom/oneplus/support/viewpager/widget/ViewPager;->dataSetChanged()V

    return-void
.end method
